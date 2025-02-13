; NOTE: Assertions have been autogenerated by utils/update_llc_test_checks.py
; RUN: llc < %s -mtriple=aarch64--linux-gnu | FileCheck %s


; i8

define <16 x i8> @insert_v16i8_2_1(float %tmp, <16 x i8> %b, <16 x i8> %a) {
; CHECK-LABEL: insert_v16i8_2_1:
; CHECK:       // %bb.0:
; CHECK-NEXT:    mov v0.16b, v1.16b
; CHECK-NEXT:    mov v0.h[0], v2.h[0]
; CHECK-NEXT:    ret
  %s2 = shufflevector <16 x i8> %a, <16 x i8> %b, <16 x i32> <i32 0, i32 1, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  ret <16 x i8> %s2
}

define <16 x i8> @insert_v16i8_2_2(float %tmp, <16 x i8> %b, <16 x i8> %a) {
; CHECK-LABEL: insert_v16i8_2_2:
; CHECK:       // %bb.0:
; CHECK-NEXT:    mov v0.16b, v1.16b
; CHECK-NEXT:    mov v0.h[1], v2.h[0]
; CHECK-NEXT:    ret
  %s2 = shufflevector <16 x i8> %a, <16 x i8> %b, <16 x i32> <i32 16, i32 17, i32 0, i32 1, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  ret <16 x i8> %s2
}

define <16 x i8> @insert_v16i8_2_6(float %tmp, <16 x i8> %b, <16 x i8> %a) {
; CHECK-LABEL: insert_v16i8_2_6:
; CHECK:       // %bb.0:
; CHECK-NEXT:    mov v0.16b, v1.16b
; CHECK-NEXT:    mov v0.h[6], v2.h[0]
; CHECK-NEXT:    ret
  %s2 = shufflevector <16 x i8> %a, <16 x i8> %b, <16 x i32> <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 0, i32 1, i32 30, i32 31>
  ret <16 x i8> %s2
}

define <16 x i8> @insert_v16i8_4_1(float %tmp, <16 x i8> %b, <16 x i8> %a) {
; CHECK-LABEL: insert_v16i8_4_1:
; CHECK:       // %bb.0:
; CHECK-NEXT:    mov v0.16b, v1.16b
; CHECK-NEXT:    mov v0.s[0], v2.s[0]
; CHECK-NEXT:    ret
  %s2 = shufflevector <16 x i8> %a, <16 x i8> %b, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  ret <16 x i8> %s2
}

define <16 x i8> @insert_v16i8_4_15(float %tmp, <16 x i8> %b, <16 x i8> %a) {
; CHECK-LABEL: insert_v16i8_4_15:
; CHECK:       // %bb.0:
; CHECK-NEXT:    adrp x8, .LCPI4_0
; CHECK-NEXT:    // kill: def $q2 killed $q2 def $q2_q3
; CHECK-NEXT:    mov v3.16b, v1.16b
; CHECK-NEXT:    ldr q0, [x8, :lo12:.LCPI4_0]
; CHECK-NEXT:    tbl v0.16b, { v2.16b, v3.16b }, v0.16b
; CHECK-NEXT:    ret
  %s2 = shufflevector <16 x i8> %a, <16 x i8> %b, <16 x i32> <i32 16, i32 17, i32 0, i32 1, i32 2, i32 3, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  ret <16 x i8> %s2
}

define <16 x i8> @insert_v16i8_4_2(float %tmp, <16 x i8> %b, <16 x i8> %a) {
; CHECK-LABEL: insert_v16i8_4_2:
; CHECK:       // %bb.0:
; CHECK-NEXT:    mov v0.16b, v1.16b
; CHECK-NEXT:    mov v0.s[1], v2.s[0]
; CHECK-NEXT:    ret
  %s2 = shufflevector <16 x i8> %a, <16 x i8> %b, <16 x i32> <i32 16, i32 17, i32 18, i32 19, i32 0, i32 1, i32 2, i32 3, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  ret <16 x i8> %s2
}

define <16 x i8> @insert_v16i8_4_3(float %tmp, <16 x i8> %b, <16 x i8> %a) {
; CHECK-LABEL: insert_v16i8_4_3:
; CHECK:       // %bb.0:
; CHECK-NEXT:    mov v0.16b, v1.16b
; CHECK-NEXT:    mov v0.s[2], v2.s[0]
; CHECK-NEXT:    ret
  %s2 = shufflevector <16 x i8> %a, <16 x i8> %b, <16 x i32> <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 0, i32 1, i32 2, i32 3, i32 28, i32 29, i32 30, i32 31>
  ret <16 x i8> %s2
}

define <16 x i8> @insert_v16i8_4_4(float %tmp, <16 x i8> %b, <16 x i8> %a) {
; CHECK-LABEL: insert_v16i8_4_4:
; CHECK:       // %bb.0:
; CHECK-NEXT:    mov v0.16b, v1.16b
; CHECK-NEXT:    mov v0.s[3], v2.s[0]
; CHECK-NEXT:    ret
  %s2 = shufflevector <16 x i8> %a, <16 x i8> %b, <16 x i32> <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 0, i32 1, i32 2, i32 3>
  ret <16 x i8> %s2
}

define <8 x i8> @insert_v8i8_4_1(float %tmp, <8 x i8> %b, <8 x i8> %a) {
; CHECK-LABEL: insert_v8i8_4_1:
; CHECK:       // %bb.0:
; CHECK-NEXT:    fmov d0, d2
; CHECK-NEXT:    // kill: def $d1 killed $d1 def $q1
; CHECK-NEXT:    mov v0.s[1], v1.s[1]
; CHECK-NEXT:    // kill: def $d0 killed $d0 killed $q0
; CHECK-NEXT:    ret
  %s2 = shufflevector <8 x i8> %a, <8 x i8> %b, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  ret <8 x i8> %s2
}

define <8 x i8> @insert_v8i8_4_2(float %tmp, <8 x i8> %b, <8 x i8> %a) {
; CHECK-LABEL: insert_v8i8_4_2:
; CHECK:       // %bb.0:
; CHECK-NEXT:    fmov d0, d1
; CHECK-NEXT:    // kill: def $d2 killed $d2 def $q2
; CHECK-NEXT:    mov v0.s[1], v2.s[0]
; CHECK-NEXT:    // kill: def $d0 killed $d0 killed $q0
; CHECK-NEXT:    ret
  %s2 = shufflevector <8 x i8> %a, <8 x i8> %b, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3>
  ret <8 x i8> %s2
}

define <16 x i8> @insert_v16i8_8_1(float %tmp, <16 x i8> %b, <16 x i8> %a) {
; CHECK-LABEL: insert_v16i8_8_1:
; CHECK:       // %bb.0:
; CHECK-NEXT:    mov v0.16b, v2.16b
; CHECK-NEXT:    mov v0.d[1], v1.d[1]
; CHECK-NEXT:    ret
  %s2 = shufflevector <16 x i8> %a, <16 x i8> %b, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  ret <16 x i8> %s2
}

define <16 x i8> @insert_v16i8_8_2(float %tmp, <16 x i8> %b, <16 x i8> %a) {
; CHECK-LABEL: insert_v16i8_8_2:
; CHECK:       // %bb.0:
; CHECK-NEXT:    mov v0.16b, v1.16b
; CHECK-NEXT:    mov v0.d[1], v2.d[0]
; CHECK-NEXT:    ret
  %s2 = shufflevector <16 x i8> %a, <16 x i8> %b, <16 x i32> <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  ret <16 x i8> %s2
}

; i16

define <8 x i16> @insert_v8i16_2_1(float %tmp, <8 x i16> %b, <8 x i16> %a) {
; CHECK-LABEL: insert_v8i16_2_1:
; CHECK:       // %bb.0:
; CHECK-NEXT:    mov v0.16b, v1.16b
; CHECK-NEXT:    mov v0.s[0], v2.s[0]
; CHECK-NEXT:    ret
  %s2 = shufflevector <8 x i16> %a, <8 x i16> %b, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  ret <8 x i16> %s2
}

define <8 x i16> @insert_v8i16_2_15(float %tmp, <8 x i16> %b, <8 x i16> %a) {
; CHECK-LABEL: insert_v8i16_2_15:
; CHECK:       // %bb.0:
; CHECK-NEXT:    adrp x8, .LCPI13_0
; CHECK-NEXT:    // kill: def $q2 killed $q2 def $q2_q3
; CHECK-NEXT:    mov v3.16b, v1.16b
; CHECK-NEXT:    ldr q0, [x8, :lo12:.LCPI13_0]
; CHECK-NEXT:    tbl v0.16b, { v2.16b, v3.16b }, v0.16b
; CHECK-NEXT:    ret
  %s2 = shufflevector <8 x i16> %a, <8 x i16> %b, <8 x i32> <i32 8, i32 0, i32 1, i32 11, i32 12, i32 13, i32 14, i32 15>
  ret <8 x i16> %s2
}

define <8 x i16> @insert_v8i16_2_2(float %tmp, <8 x i16> %b, <8 x i16> %a) {
; CHECK-LABEL: insert_v8i16_2_2:
; CHECK:       // %bb.0:
; CHECK-NEXT:    mov v0.16b, v1.16b
; CHECK-NEXT:    mov v0.s[1], v2.s[0]
; CHECK-NEXT:    ret
  %s2 = shufflevector <8 x i16> %a, <8 x i16> %b, <8 x i32> <i32 8, i32 9, i32 0, i32 1, i32 12, i32 13, i32 14, i32 15>
  ret <8 x i16> %s2
}

define <8 x i16> @insert_v8i16_2_3(float %tmp, <8 x i16> %b, <8 x i16> %a) {
; CHECK-LABEL: insert_v8i16_2_3:
; CHECK:       // %bb.0:
; CHECK-NEXT:    mov v0.16b, v1.16b
; CHECK-NEXT:    mov v0.s[2], v2.s[0]
; CHECK-NEXT:    ret
  %s2 = shufflevector <8 x i16> %a, <8 x i16> %b, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 14, i32 15>
  ret <8 x i16> %s2
}

define <8 x i16> @insert_v8i16_2_4(float %tmp, <8 x i16> %b, <8 x i16> %a) {
; CHECK-LABEL: insert_v8i16_2_4:
; CHECK:       // %bb.0:
; CHECK-NEXT:    mov v0.16b, v1.16b
; CHECK-NEXT:    mov v0.s[3], v2.s[0]
; CHECK-NEXT:    ret
  %s2 = shufflevector <8 x i16> %a, <8 x i16> %b, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 0, i32 1>
  ret <8 x i16> %s2
}

define <4 x i16> @insert_v4i16_2_1(float %tmp, <4 x i16> %b, <4 x i16> %a) {
; CHECK-LABEL: insert_v4i16_2_1:
; CHECK:       // %bb.0:
; CHECK-NEXT:    fmov d0, d2
; CHECK-NEXT:    // kill: def $d1 killed $d1 def $q1
; CHECK-NEXT:    mov v0.s[1], v1.s[1]
; CHECK-NEXT:    // kill: def $d0 killed $d0 killed $q0
; CHECK-NEXT:    ret
  %s2 = shufflevector <4 x i16> %a, <4 x i16> %b, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  ret <4 x i16> %s2
}

define <4 x i16> @insert_v4i16_2_2(float %tmp, <4 x i16> %b, <4 x i16> %a) {
; CHECK-LABEL: insert_v4i16_2_2:
; CHECK:       // %bb.0:
; CHECK-NEXT:    fmov d0, d1
; CHECK-NEXT:    // kill: def $d2 killed $d2 def $q2
; CHECK-NEXT:    mov v0.s[1], v2.s[0]
; CHECK-NEXT:    // kill: def $d0 killed $d0 killed $q0
; CHECK-NEXT:    ret
  %s2 = shufflevector <4 x i16> %a, <4 x i16> %b, <4 x i32> <i32 4, i32 5, i32 0, i32 1>
  ret <4 x i16> %s2
}

define <8 x i16> @insert_v8i16_4_1(float %tmp, <8 x i16> %b, <8 x i16> %a) {
; CHECK-LABEL: insert_v8i16_4_1:
; CHECK:       // %bb.0:
; CHECK-NEXT:    mov v0.16b, v2.16b
; CHECK-NEXT:    mov v0.d[1], v1.d[1]
; CHECK-NEXT:    ret
  %s2 = shufflevector <8 x i16> %a, <8 x i16> %b, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  ret <8 x i16> %s2
}

define <8 x i16> @insert_v8i16_4_2(float %tmp, <8 x i16> %b, <8 x i16> %a) {
; CHECK-LABEL: insert_v8i16_4_2:
; CHECK:       // %bb.0:
; CHECK-NEXT:    mov v0.16b, v1.16b
; CHECK-NEXT:    mov v0.d[1], v2.d[0]
; CHECK-NEXT:    ret
  %s2 = shufflevector <8 x i16> %a, <8 x i16> %b, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3>
  ret <8 x i16> %s2
}

; i32

define <4 x i32> @insert_v4i32_2_1(float %tmp, <4 x i32> %b, <4 x i32> %a) {
; CHECK-LABEL: insert_v4i32_2_1:
; CHECK:       // %bb.0:
; CHECK-NEXT:    mov v0.16b, v2.16b
; CHECK-NEXT:    mov v0.d[1], v1.d[1]
; CHECK-NEXT:    ret
  %s2 = shufflevector <4 x i32> %a, <4 x i32> %b, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  ret <4 x i32> %s2
}

define <4 x i32> @insert_v4i32_2_2(float %tmp, <4 x i32> %b, <4 x i32> %a) {
; CHECK-LABEL: insert_v4i32_2_2:
; CHECK:       // %bb.0:
; CHECK-NEXT:    mov v0.16b, v1.16b
; CHECK-NEXT:    mov v0.d[1], v2.d[0]
; CHECK-NEXT:    ret
  %s2 = shufflevector <4 x i32> %a, <4 x i32> %b, <4 x i32> <i32 4, i32 5, i32 0, i32 1>
  ret <4 x i32> %s2
}




; i8

define <16 x i8> @load_v16i8_4_1(float %tmp, <16 x i8> %b, <4 x i8> *%a) {
; CHECK-LABEL: load_v16i8_4_1:
; CHECK:       // %bb.0:
; CHECK-NEXT:    mov v0.16b, v1.16b
; CHECK-NEXT:    ldr s1, [x0]
; CHECK-NEXT:    mov v0.s[0], v1.s[0]
; CHECK-NEXT:    ret
  %l = load <4 x i8>, <4 x i8> *%a
  %s1 = shufflevector <4 x i8> %l, <4 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  %s2 = shufflevector <16 x i8> %s1, <16 x i8> %b, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  ret <16 x i8> %s2
}

define <16 x i8> @load_v16i8_4_15(float %tmp, <16 x i8> %b, <4 x i8> *%a) {
; CHECK-LABEL: load_v16i8_4_15:
; CHECK:       // %bb.0:
; CHECK-NEXT:    adrp x8, .LCPI24_0
; CHECK-NEXT:    // kill: def $q1 killed $q1 def $q0_q1
; CHECK-NEXT:    ldr s0, [x0]
; CHECK-NEXT:    ldr q2, [x8, :lo12:.LCPI24_0]
; CHECK-NEXT:    tbl v0.16b, { v0.16b, v1.16b }, v2.16b
; CHECK-NEXT:    ret
  %l = load <4 x i8>, <4 x i8> *%a
  %s1 = shufflevector <4 x i8> %l, <4 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  %s2 = shufflevector <16 x i8> %s1, <16 x i8> %b, <16 x i32> <i32 16, i32 17, i32 0, i32 1, i32 2, i32 3, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  ret <16 x i8> %s2
}

define <16 x i8> @load_v16i8_4_2(float %tmp, <16 x i8> %b, <4 x i8> *%a) {
; CHECK-LABEL: load_v16i8_4_2:
; CHECK:       // %bb.0:
; CHECK-NEXT:    mov v0.16b, v1.16b
; CHECK-NEXT:    ldr s1, [x0]
; CHECK-NEXT:    mov v0.s[1], v1.s[0]
; CHECK-NEXT:    ret
  %l = load <4 x i8>, <4 x i8> *%a
  %s1 = shufflevector <4 x i8> %l, <4 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  %s2 = shufflevector <16 x i8> %s1, <16 x i8> %b, <16 x i32> <i32 16, i32 17, i32 18, i32 19, i32 0, i32 1, i32 2, i32 3, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  ret <16 x i8> %s2
}

define <16 x i8> @load_v16i8_4_3(float %tmp, <16 x i8> %b, <4 x i8> *%a) {
; CHECK-LABEL: load_v16i8_4_3:
; CHECK:       // %bb.0:
; CHECK-NEXT:    mov v0.16b, v1.16b
; CHECK-NEXT:    ldr s1, [x0]
; CHECK-NEXT:    mov v0.s[2], v1.s[0]
; CHECK-NEXT:    ret
  %l = load <4 x i8>, <4 x i8> *%a
  %s1 = shufflevector <4 x i8> %l, <4 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  %s2 = shufflevector <16 x i8> %s1, <16 x i8> %b, <16 x i32> <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 0, i32 1, i32 2, i32 3, i32 28, i32 29, i32 30, i32 31>
  ret <16 x i8> %s2
}

define <16 x i8> @load_v16i8_4_4(float %tmp, <16 x i8> %b, <4 x i8> *%a) {
; CHECK-LABEL: load_v16i8_4_4:
; CHECK:       // %bb.0:
; CHECK-NEXT:    mov v0.16b, v1.16b
; CHECK-NEXT:    ldr s1, [x0]
; CHECK-NEXT:    mov v0.s[3], v1.s[0]
; CHECK-NEXT:    ret
  %l = load <4 x i8>, <4 x i8> *%a
  %s1 = shufflevector <4 x i8> %l, <4 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  %s2 = shufflevector <16 x i8> %s1, <16 x i8> %b, <16 x i32> <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 0, i32 1, i32 2, i32 3>
  ret <16 x i8> %s2
}

define <8 x i8> @load_v8i8_4_1(float %tmp, <8 x i8> %b, <4 x i8> *%a) {
; CHECK-LABEL: load_v8i8_4_1:
; CHECK:       // %bb.0:
; CHECK-NEXT:    ldr s0, [x0]
; CHECK-NEXT:    // kill: def $d1 killed $d1 def $q1
; CHECK-NEXT:    ushll v0.8h, v0.8b, #0
; CHECK-NEXT:    uzp1 v0.8b, v0.8b, v0.8b
; CHECK-NEXT:    mov v0.s[1], v1.s[1]
; CHECK-NEXT:    // kill: def $d0 killed $d0 killed $q0
; CHECK-NEXT:    ret
  %l = load <4 x i8>, <4 x i8> *%a
  %s1 = shufflevector <4 x i8> %l, <4 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 undef, i32 undef, i32 undef, i32 undef>
  %s2 = shufflevector <8 x i8> %s1, <8 x i8> %b, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  ret <8 x i8> %s2
}

define <8 x i8> @load_v8i8_4_2(float %tmp, <8 x i8> %b, <4 x i8> *%a) {
; CHECK-LABEL: load_v8i8_4_2:
; CHECK:       // %bb.0:
; CHECK-NEXT:    ldr s0, [x0]
; CHECK-NEXT:    ushll v0.8h, v0.8b, #0
; CHECK-NEXT:    uzp1 v2.8b, v0.8b, v0.8b
; CHECK-NEXT:    fmov d0, d1
; CHECK-NEXT:    mov v0.s[1], v2.s[0]
; CHECK-NEXT:    // kill: def $d0 killed $d0 killed $q0
; CHECK-NEXT:    ret
  %l = load <4 x i8>, <4 x i8> *%a
  %s1 = shufflevector <4 x i8> %l, <4 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 undef, i32 undef, i32 undef, i32 undef>
  %s2 = shufflevector <8 x i8> %s1, <8 x i8> %b, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3>
  ret <8 x i8> %s2
}

define <16 x i8> @load_v16i8_8_1(float %tmp, <16 x i8> %b, <8 x i8> *%a) {
; CHECK-LABEL: load_v16i8_8_1:
; CHECK:       // %bb.0:
; CHECK-NEXT:    ext v1.16b, v1.16b, v1.16b, #8
; CHECK-NEXT:    ldr d0, [x0]
; CHECK-NEXT:    mov v0.d[1], v1.d[0]
; CHECK-NEXT:    ret
  %l = load <8 x i8>, <8 x i8> *%a
  %s1 = shufflevector <8 x i8> %l, <8 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  %s2 = shufflevector <16 x i8> %s1, <16 x i8> %b, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  ret <16 x i8> %s2
}

define <16 x i8> @load_v16i8_8_2(float %tmp, <16 x i8> %b, <8 x i8> *%a) {
; CHECK-LABEL: load_v16i8_8_2:
; CHECK:       // %bb.0:
; CHECK-NEXT:    mov v0.16b, v1.16b
; CHECK-NEXT:    ldr d1, [x0]
; CHECK-NEXT:    mov v0.d[1], v1.d[0]
; CHECK-NEXT:    ret
  %l = load <8 x i8>, <8 x i8> *%a
  %s1 = shufflevector <8 x i8> %l, <8 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  %s2 = shufflevector <16 x i8> %s1, <16 x i8> %b, <16 x i32> <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  ret <16 x i8> %s2
}

; i16

define <8 x i16> @load_v8i16_2_1(float %tmp, <8 x i16> %b, <2 x i16> *%a) {
; CHECK-LABEL: load_v8i16_2_1:
; CHECK:       // %bb.0:
; CHECK-NEXT:    ldrh w9, [x0]
; CHECK-NEXT:    add x8, x0, #2
; CHECK-NEXT:    mov v0.16b, v1.16b
; CHECK-NEXT:    fmov s2, w9
; CHECK-NEXT:    ld1 { v2.h }[2], [x8]
; CHECK-NEXT:    xtn v1.4h, v2.4s
; CHECK-NEXT:    mov v0.s[0], v1.s[0]
; CHECK-NEXT:    ret
  %l = load <2 x i16>, <2 x i16> *%a
  %s1 = shufflevector <2 x i16> %l, <2 x i16> poison, <8 x i32> <i32 0, i32 1, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  %s2 = shufflevector <8 x i16> %s1, <8 x i16> %b, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  ret <8 x i16> %s2
}

define <8 x i16> @load_v8i16_2_15(float %tmp, <8 x i16> %b, <2 x i16> *%a) {
; CHECK-LABEL: load_v8i16_2_15:
; CHECK:       // %bb.0:
; CHECK-NEXT:    ldrh w9, [x0]
; CHECK-NEXT:    add x8, x0, #2
; CHECK-NEXT:    // kill: def $q1 killed $q1 def $q0_q1
; CHECK-NEXT:    fmov s2, w9
; CHECK-NEXT:    ld1 { v2.h }[2], [x8]
; CHECK-NEXT:    adrp x8, .LCPI33_0
; CHECK-NEXT:    ldr q3, [x8, :lo12:.LCPI33_0]
; CHECK-NEXT:    xtn v0.4h, v2.4s
; CHECK-NEXT:    tbl v0.16b, { v0.16b, v1.16b }, v3.16b
; CHECK-NEXT:    ret
  %l = load <2 x i16>, <2 x i16> *%a
  %s1 = shufflevector <2 x i16> %l, <2 x i16> poison, <8 x i32> <i32 0, i32 1, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  %s2 = shufflevector <8 x i16> %s1, <8 x i16> %b, <8 x i32> <i32 8, i32 0, i32 1, i32 11, i32 12, i32 13, i32 14, i32 15>
  ret <8 x i16> %s2
}

define <8 x i16> @load_v8i16_2_2(float %tmp, <8 x i16> %b, <2 x i16> *%a) {
; CHECK-LABEL: load_v8i16_2_2:
; CHECK:       // %bb.0:
; CHECK-NEXT:    ldrh w9, [x0]
; CHECK-NEXT:    add x8, x0, #2
; CHECK-NEXT:    mov v0.16b, v1.16b
; CHECK-NEXT:    fmov s2, w9
; CHECK-NEXT:    ld1 { v2.h }[2], [x8]
; CHECK-NEXT:    xtn v1.4h, v2.4s
; CHECK-NEXT:    mov v0.s[1], v1.s[0]
; CHECK-NEXT:    ret
  %l = load <2 x i16>, <2 x i16> *%a
  %s1 = shufflevector <2 x i16> %l, <2 x i16> poison, <8 x i32> <i32 0, i32 1, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  %s2 = shufflevector <8 x i16> %s1, <8 x i16> %b, <8 x i32> <i32 8, i32 9, i32 0, i32 1, i32 12, i32 13, i32 14, i32 15>
  ret <8 x i16> %s2
}

define <8 x i16> @load_v8i16_2_3(float %tmp, <8 x i16> %b, <2 x i16> *%a) {
; CHECK-LABEL: load_v8i16_2_3:
; CHECK:       // %bb.0:
; CHECK-NEXT:    ldrh w9, [x0]
; CHECK-NEXT:    add x8, x0, #2
; CHECK-NEXT:    mov v0.16b, v1.16b
; CHECK-NEXT:    fmov s2, w9
; CHECK-NEXT:    ld1 { v2.h }[2], [x8]
; CHECK-NEXT:    xtn v1.4h, v2.4s
; CHECK-NEXT:    mov v0.s[2], v1.s[0]
; CHECK-NEXT:    ret
  %l = load <2 x i16>, <2 x i16> *%a
  %s1 = shufflevector <2 x i16> %l, <2 x i16> poison, <8 x i32> <i32 0, i32 1, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  %s2 = shufflevector <8 x i16> %s1, <8 x i16> %b, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 14, i32 15>
  ret <8 x i16> %s2
}

define <8 x i16> @load_v8i16_2_4(float %tmp, <8 x i16> %b, <2 x i16> *%a) {
; CHECK-LABEL: load_v8i16_2_4:
; CHECK:       // %bb.0:
; CHECK-NEXT:    ldrh w9, [x0]
; CHECK-NEXT:    add x8, x0, #2
; CHECK-NEXT:    mov v0.16b, v1.16b
; CHECK-NEXT:    fmov s2, w9
; CHECK-NEXT:    ld1 { v2.h }[2], [x8]
; CHECK-NEXT:    xtn v1.4h, v2.4s
; CHECK-NEXT:    mov v0.s[3], v1.s[0]
; CHECK-NEXT:    ret
  %l = load <2 x i16>, <2 x i16> *%a
  %s1 = shufflevector <2 x i16> %l, <2 x i16> poison, <8 x i32> <i32 0, i32 1, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  %s2 = shufflevector <8 x i16> %s1, <8 x i16> %b, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 0, i32 1>
  ret <8 x i16> %s2
}

define <4 x i16> @load_v4i16_2_1(float %tmp, <4 x i16> %b, <2 x i16> *%a) {
; CHECK-LABEL: load_v4i16_2_1:
; CHECK:       // %bb.0:
; CHECK-NEXT:    ld1 { v0.h }[0], [x0]
; CHECK-NEXT:    add x8, x0, #2
; CHECK-NEXT:    // kill: def $d1 killed $d1 def $q1
; CHECK-NEXT:    ld1 { v0.h }[2], [x8]
; CHECK-NEXT:    uzp1 v0.4h, v0.4h, v0.4h
; CHECK-NEXT:    mov v0.s[1], v1.s[1]
; CHECK-NEXT:    // kill: def $d0 killed $d0 killed $q0
; CHECK-NEXT:    ret
  %l = load <2 x i16>, <2 x i16> *%a
  %s1 = shufflevector <2 x i16> %l, <2 x i16> poison, <4 x i32> <i32 0, i32 1, i32 undef, i32 undef>
  %s2 = shufflevector <4 x i16> %s1, <4 x i16> %b, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  ret <4 x i16> %s2
}

define <4 x i16> @load_v4i16_2_2(float %tmp, <4 x i16> %b, <2 x i16> *%a) {
; CHECK-LABEL: load_v4i16_2_2:
; CHECK:       // %bb.0:
; CHECK-NEXT:    ld1 { v0.h }[0], [x0]
; CHECK-NEXT:    add x8, x0, #2
; CHECK-NEXT:    ld1 { v0.h }[2], [x8]
; CHECK-NEXT:    uzp1 v2.4h, v0.4h, v0.4h
; CHECK-NEXT:    fmov d0, d1
; CHECK-NEXT:    mov v0.s[1], v2.s[0]
; CHECK-NEXT:    // kill: def $d0 killed $d0 killed $q0
; CHECK-NEXT:    ret
  %l = load <2 x i16>, <2 x i16> *%a
  %s1 = shufflevector <2 x i16> %l, <2 x i16> poison, <4 x i32> <i32 0, i32 1, i32 undef, i32 undef>
  %s2 = shufflevector <4 x i16> %s1, <4 x i16> %b, <4 x i32> <i32 4, i32 5, i32 0, i32 1>
  ret <4 x i16> %s2
}

define <8 x i16> @load_v8i16_4_1(float %tmp, <8 x i16> %b, <4 x i16> *%a) {
; CHECK-LABEL: load_v8i16_4_1:
; CHECK:       // %bb.0:
; CHECK-NEXT:    ext v1.16b, v1.16b, v1.16b, #8
; CHECK-NEXT:    ldr d0, [x0]
; CHECK-NEXT:    mov v0.d[1], v1.d[0]
; CHECK-NEXT:    ret
  %l = load <4 x i16>, <4 x i16> *%a
  %s1 = shufflevector <4 x i16> %l, <4 x i16> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 undef, i32 undef, i32 undef, i32 undef>
  %s2 = shufflevector <8 x i16> %s1, <8 x i16> %b, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  ret <8 x i16> %s2
}

define <8 x i16> @load_v8i16_4_2(float %tmp, <8 x i16> %b, <4 x i16> *%a) {
; CHECK-LABEL: load_v8i16_4_2:
; CHECK:       // %bb.0:
; CHECK-NEXT:    mov v0.16b, v1.16b
; CHECK-NEXT:    ldr d1, [x0]
; CHECK-NEXT:    mov v0.d[1], v1.d[0]
; CHECK-NEXT:    ret
  %l = load <4 x i16>, <4 x i16> *%a
  %s1 = shufflevector <4 x i16> %l, <4 x i16> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 undef, i32 undef, i32 undef, i32 undef>
  %s2 = shufflevector <8 x i16> %s1, <8 x i16> %b, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3>
  ret <8 x i16> %s2
}

; i32

define <4 x i32> @load_v4i32_2_1(float %tmp, <4 x i32> %b, <2 x i32> *%a) {
; CHECK-LABEL: load_v4i32_2_1:
; CHECK:       // %bb.0:
; CHECK-NEXT:    ext v1.16b, v1.16b, v1.16b, #8
; CHECK-NEXT:    ldr d0, [x0]
; CHECK-NEXT:    mov v0.d[1], v1.d[0]
; CHECK-NEXT:    ret
  %l = load <2 x i32>, <2 x i32> *%a
  %s1 = shufflevector <2 x i32> %l, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 undef, i32 undef>
  %s2 = shufflevector <4 x i32> %s1, <4 x i32> %b, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  ret <4 x i32> %s2
}

define <4 x i32> @load_v4i32_2_2(float %tmp, <4 x i32> %b, <2 x i32> *%a) {
; CHECK-LABEL: load_v4i32_2_2:
; CHECK:       // %bb.0:
; CHECK-NEXT:    mov v0.16b, v1.16b
; CHECK-NEXT:    ldr d1, [x0]
; CHECK-NEXT:    mov v0.d[1], v1.d[0]
; CHECK-NEXT:    ret
  %l = load <2 x i32>, <2 x i32> *%a
  %s1 = shufflevector <2 x i32> %l, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 undef, i32 undef>
  %s2 = shufflevector <4 x i32> %s1, <4 x i32> %b, <4 x i32> <i32 4, i32 5, i32 0, i32 1>
  ret <4 x i32> %s2
}

; More than a single vector

define <8 x i8> @load2_v4i8(float %tmp, <4 x i8> *%a, <4 x i8> *%b) {
; CHECK-LABEL: load2_v4i8:
; CHECK:       // %bb.0:
; CHECK-NEXT:    ldr s0, [x0]
; CHECK-NEXT:    ldr s1, [x1]
; CHECK-NEXT:    ushll v0.8h, v0.8b, #0
; CHECK-NEXT:    ushll v1.8h, v1.8b, #0
; CHECK-NEXT:    uzp1 v0.8b, v0.8b, v1.8b
; CHECK-NEXT:    ret
  %la = load <4 x i8>, <4 x i8> *%a
  %lb = load <4 x i8>, <4 x i8> *%b
  %s1 = shufflevector <4 x i8> %la, <4 x i8> %lb, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  ret <8 x i8> %s1
}

define <16 x i8> @load3_v4i8(float %tmp, <4 x i8> *%a, <4 x i8> *%b) {
; CHECK-LABEL: load3_v4i8:
; CHECK:       // %bb.0:
; CHECK-NEXT:    ldp s0, s1, [x0]
; CHECK-NEXT:    ldr s3, [x1]
; CHECK-NEXT:    ushll v2.8h, v0.8b, #0
; CHECK-NEXT:    ushll v1.8h, v1.8b, #0
; CHECK-NEXT:    umov w8, v2.h[0]
; CHECK-NEXT:    umov w9, v2.h[1]
; CHECK-NEXT:    fmov s0, w8
; CHECK-NEXT:    umov w8, v2.h[2]
; CHECK-NEXT:    mov v0.b[1], w9
; CHECK-NEXT:    umov w9, v2.h[3]
; CHECK-NEXT:    ushll v2.8h, v3.8b, #0
; CHECK-NEXT:    mov v0.b[2], w8
; CHECK-NEXT:    umov w8, v2.h[0]
; CHECK-NEXT:    mov v0.b[3], w9
; CHECK-NEXT:    umov w9, v2.h[1]
; CHECK-NEXT:    mov v0.b[4], w8
; CHECK-NEXT:    umov w8, v2.h[2]
; CHECK-NEXT:    mov v0.b[5], w9
; CHECK-NEXT:    umov w9, v2.h[3]
; CHECK-NEXT:    mov v0.b[6], w8
; CHECK-NEXT:    umov w8, v1.h[0]
; CHECK-NEXT:    mov v0.b[7], w9
; CHECK-NEXT:    umov w9, v1.h[1]
; CHECK-NEXT:    mov v0.b[8], w8
; CHECK-NEXT:    umov w8, v1.h[2]
; CHECK-NEXT:    mov v0.b[9], w9
; CHECK-NEXT:    umov w9, v1.h[3]
; CHECK-NEXT:    mov v0.b[10], w8
; CHECK-NEXT:    mov v0.b[11], w9
; CHECK-NEXT:    ret
  %la = load <4 x i8>, <4 x i8> *%a
  %lb = load <4 x i8>, <4 x i8> *%b
  %c = getelementptr <4 x i8>, <4 x i8> *%a, i64 1
  %d = getelementptr <4 x i8>, <4 x i8> *%b, i64 1
  %lc = load <4 x i8>, <4 x i8> *%c
  %s1 = shufflevector <4 x i8> %la, <4 x i8> %lb, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %s2 = shufflevector <4 x i8> %lc, <4 x i8> undef, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %s3 = shufflevector <8 x i8> %s1, <8 x i8> %s2, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  ret <16 x i8> %s3
}

define <16 x i8> @load4_v4i8(float %tmp, <4 x i8> *%a, <4 x i8> *%b) {
; CHECK-LABEL: load4_v4i8:
; CHECK:       // %bb.0:
; CHECK-NEXT:    ldp s0, s1, [x0]
; CHECK-NEXT:    ldp s2, s3, [x1]
; CHECK-NEXT:    ushll v0.8h, v0.8b, #0
; CHECK-NEXT:    ushll v1.8h, v1.8b, #0
; CHECK-NEXT:    ushll v3.8h, v3.8b, #0
; CHECK-NEXT:    ushll v2.8h, v2.8b, #0
; CHECK-NEXT:    mov v1.d[1], v3.d[0]
; CHECK-NEXT:    mov v0.d[1], v2.d[0]
; CHECK-NEXT:    uzp1 v0.16b, v0.16b, v1.16b
; CHECK-NEXT:    ret
  %la = load <4 x i8>, <4 x i8> *%a
  %lb = load <4 x i8>, <4 x i8> *%b
  %c = getelementptr <4 x i8>, <4 x i8> *%a, i64 1
  %d = getelementptr <4 x i8>, <4 x i8> *%b, i64 1
  %lc = load <4 x i8>, <4 x i8> *%c
  %ld = load <4 x i8>, <4 x i8> *%d
  %s1 = shufflevector <4 x i8> %la, <4 x i8> %lb, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %s2 = shufflevector <4 x i8> %lc, <4 x i8> %ld, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %s3 = shufflevector <8 x i8> %s1, <8 x i8> %s2, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  ret <16 x i8> %s3
}

define <16 x i8> @load2multi1_v4i8(float %tmp, <4 x i8> *%a, <4 x i8> *%b) {
; CHECK-LABEL: load2multi1_v4i8:
; CHECK:       // %bb.0:
; CHECK-NEXT:    ldr s0, [x0]
; CHECK-NEXT:    ldr s1, [x1]
; CHECK-NEXT:    ushll v0.8h, v0.8b, #0
; CHECK-NEXT:    ushll v1.8h, v1.8b, #0
; CHECK-NEXT:    mov v0.d[1], v1.d[0]
; CHECK-NEXT:    uzp1 v0.16b, v0.16b, v0.16b
; CHECK-NEXT:    ret
  %la = load <4 x i8>, <4 x i8> *%a
  %lb = load <4 x i8>, <4 x i8> *%b
  %s1 = shufflevector <4 x i8> %la, <4 x i8> %lb, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %s3 = shufflevector <8 x i8> %s1, <8 x i8> %s1, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  ret <16 x i8> %s3
}

define <16 x i8> @load2multi2_v4i8(float %tmp, <4 x i8> *%a, <4 x i8> *%b) {
; CHECK-LABEL: load2multi2_v4i8:
; CHECK:       // %bb.0:
; CHECK-NEXT:    ldr s0, [x1]
; CHECK-NEXT:    ldr s1, [x0]
; CHECK-NEXT:    ushll v0.8h, v0.8b, #0
; CHECK-NEXT:    ushll v1.8h, v1.8b, #0
; CHECK-NEXT:    mov v0.d[1], v0.d[0]
; CHECK-NEXT:    mov v1.d[1], v1.d[0]
; CHECK-NEXT:    uzp1 v0.16b, v1.16b, v0.16b
; CHECK-NEXT:    ret
  %la = load <4 x i8>, <4 x i8> *%a
  %lb = load <4 x i8>, <4 x i8> *%b
  %s1 = shufflevector <4 x i8> %la, <4 x i8> %la, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %s2 = shufflevector <4 x i8> %lb, <4 x i8> %lb, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %s3 = shufflevector <8 x i8> %s1, <8 x i8> %s2, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  ret <16 x i8> %s3
}
