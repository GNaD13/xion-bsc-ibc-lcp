; ModuleID = 'probe5.417c239ab321d274-cgu.0'
source_filename = "probe5.417c239ab321d274-cgu.0"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx11.0.0"

; core::f64::<impl f64>::is_subnormal
; Function Attrs: inlinehint uwtable
define internal zeroext i1 @"_ZN4core3f6421_$LT$impl$u20$f64$GT$12is_subnormal17h342e8fb37b9849fdE"(double %self) unnamed_addr #0 {
start:
  %_2 = alloca [1 x i8], align 1
  %_4 = fcmp une double %self, %self
  br i1 %_4, label %bb1, label %bb2

bb2:                                              ; preds = %start
  %b = bitcast double %self to i64
  %_6 = and i64 %b, 4503599627370495
  %_7 = and i64 %b, 9218868437227405312
  %0 = icmp eq i64 %_6, 0
  br i1 %0, label %bb4, label %bb3

bb1:                                              ; preds = %start
  store i8 0, ptr %_2, align 1
  br label %bb9

bb4:                                              ; preds = %bb2
  switch i64 %_7, label %bb3 [
    i64 9218868437227405312, label %bb8
    i64 0, label %bb7
  ]

bb3:                                              ; preds = %bb4, %bb2
  %1 = icmp eq i64 %_7, 0
  br i1 %1, label %bb6, label %bb5

bb8:                                              ; preds = %bb4
  store i8 1, ptr %_2, align 1
  br label %bb9

bb7:                                              ; preds = %bb4
  store i8 2, ptr %_2, align 1
  br label %bb9

bb9:                                              ; preds = %bb1, %bb5, %bb6, %bb7, %bb8
  %2 = load i8, ptr %_2, align 1
  %_3 = zext i8 %2 to i64
  %_0 = icmp eq i64 %_3, 3
  ret i1 %_0

bb6:                                              ; preds = %bb3
  store i8 3, ptr %_2, align 1
  br label %bb9

bb5:                                              ; preds = %bb3
  store i8 4, ptr %_2, align 1
  br label %bb9
}

; probe5::probe
; Function Attrs: uwtable
define void @_ZN6probe55probe17h16b4a5e20fafcb5fE() unnamed_addr #1 {
start:
; call core::f64::<impl f64>::is_subnormal
  %_1 = call zeroext i1 @"_ZN4core3f6421_$LT$impl$u20$f64$GT$12is_subnormal17h342e8fb37b9849fdE"(double 1.000000e+00)
  ret void
}

attributes #0 = { inlinehint uwtable "frame-pointer"="non-leaf" "probe-stack"="inline-asm" "target-cpu"="apple-m1" }
attributes #1 = { uwtable "frame-pointer"="non-leaf" "probe-stack"="inline-asm" "target-cpu"="apple-m1" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{!"rustc version 1.83.0-nightly (4ac7bcbaa 2024-09-04)"}
