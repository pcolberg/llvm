// RUN: %clang_cc1 -fsycl-is-device -internal-isystem %S/Inputs -fsyntax-only -sycl-std=2020 -verify -DTRIGGER_ERROR %s
// RUN: %clang_cc1 -fsycl-is-device -internal-isystem %S/Inputs -sycl-std=2020 -ast-dump %s | FileCheck %s

// Test for AST of reqd_work_group_size kernel attribute in SYCL 2020.

#include "sycl.hpp"

using namespace cl::sycl;
queue q;

// The GNU and [[cl::reqd_work_group_size]] spellings are deprecated in SYCL
// mode, and still requires all three arguments.
__attribute__((reqd_work_group_size(4, 4, 4))) void four_once_more(); // expected-warning {{attribute 'reqd_work_group_size' is deprecated}} \
                                                                      // expected-note {{did you mean to use '[[sycl::reqd_work_group_size]]' instead?}}
[[cl::reqd_work_group_size(4, 4, 4)]] void four_with_feeling(); // expected-warning {{attribute 'cl::reqd_work_group_size' is deprecated}} \
                                                                // expected-note {{did you mean to use 'sycl::reqd_work_group_size' instead?}}

#ifdef TRIGGER_ERROR
__attribute__((reqd_work_group_size(4))) void four_yet_again(); // expected-error {{'reqd_work_group_size' attribute requires exactly 3 arguments}} \
                                                                // expected-warning {{attribute 'reqd_work_group_size' is deprecated}} \
                                                                // expected-note {{did you mean to use '[[sycl::reqd_work_group_size]]' instead?}}

[[cl::reqd_work_group_size(4)]] void four_with_more_feeling(); // expected-error {{'reqd_work_group_size' attribute requires exactly 3 arguments}} \
                                                               // expected-warning {{attribute 'cl::reqd_work_group_size' is deprecated}} \
							       // expected-note {{did you mean to use 'sycl::reqd_work_group_size' instead?}}
class Functor32 {
public:
  [[sycl::reqd_work_group_size(32, 1, 1)]]      // expected-note {{previous attribute is here}}
  [[sycl::reqd_work_group_size(1, 1, 32)]] void // expected-error{{attribute 'reqd_work_group_size' is already applied with different arguments}}
  operator()() const {}
};
#endif // TRIGGER_ERROR

class Functor16x16x16 {
public:
  [[sycl::reqd_work_group_size(16, 16, 16)]] void operator()() const {}
};

class FunctorAttr {
public:
  __attribute__((reqd_work_group_size(128, 128, 128))) void operator()() const {} // expected-warning {{attribute 'reqd_work_group_size' is deprecated}} \
                                                                                  // expected-note {{did you mean to use '[[sycl::reqd_work_group_size]]' instead?}}
};

struct TRIFuncObjGood {
  [[sycl::reqd_work_group_size(1, 2, 3)]] void
  operator()() const;
};

[[sycl::reqd_work_group_size(1, 2, 3)]] void TRIFuncObjGood::operator()() const {}

int main() {
  q.submit([&](handler &h) {
    // CHECK: FunctionDecl {{.*}} {{.*}}kernel_name1
    // CHECK: ReqdWorkGroupSizeAttr
    // CHECK-NEXT:  ConstantExpr{{.*}}'int'
    // CHECK-NEXT:  value: Int 16
    // CHECK-NEXT:  IntegerLiteral {{.*}} 'int' 16
    // CHECK-NEXT:  ConstantExpr{{.*}}'int'
    // CHECK-NEXT:  value: Int 16
    // CHECK-NEXT:  IntegerLiteral {{.*}} 'int' 16
    // CHECK-NEXT:  ConstantExpr{{.*}}'int'
    // CHECK-NEXT:  value: Int 16
    // CHECK-NEXT:  IntegerLiteral {{.*}} 'int' 16
    Functor16x16x16 f16x16x16;
    h.single_task<class kernel_name1>(f16x16x16);

    // CHECK: FunctionDecl {{.*}} {{.*}}kernel_name2
    // CHECK: ReqdWorkGroupSizeAttr
    // CHECK-NEXT:  ConstantExpr{{.*}}'int'
    // CHECK-NEXT:  value: Int 128
    // CHECK-NEXT:  IntegerLiteral {{.*}} 'int' 128
    // CHECK-NEXT:  ConstantExpr{{.*}}'int'
    // CHECK-NEXT:  value: Int 128
    // CHECK-NEXT:  IntegerLiteral {{.*}} 'int' 128
    // CHECK-NEXT:  ConstantExpr{{.*}}'int'
    // CHECK-NEXT:  value: Int 128
    // CHECK-NEXT:  IntegerLiteral {{.*}} 'int' 128
    FunctorAttr fattr;
    h.single_task<class kernel_name2>(fattr);

    // CHECK-LABEL: FunctionDecl {{.*}}test_kernel3
    // CHECK:       ReqdWorkGroupSizeAttr
    // CHECK-NEXT:  ConstantExpr{{.*}}'int'
    // CHECK-NEXT:  value: Int 1
    // CHECK-NEXT:  IntegerLiteral{{.*}}1{{$}}
    // CHECK-NEXT:  ConstantExpr{{.*}}'int'
    // CHECK-NEXT:  value: Int 2
    // CHECK-NEXT:  IntegerLiteral{{.*}}2{{$}}
    // CHECK-NEXT:  ConstantExpr{{.*}}'int'
    // CHECK-NEXT:  value: Int 3
    // CHECK-NEXT:  IntegerLiteral{{.*}}3{{$}}
    h.single_task<class test_kernel3>(TRIFuncObjGood());
  });
  return 0;
}
