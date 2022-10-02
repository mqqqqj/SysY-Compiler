; ModuleID = 'simplifycfg.bc'
source_filename = "main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@n = dso_local constant i32 20, align 4
@global_no_use = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local void @no_use_func() #0 {
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @func_a() #0 {
  br label %1

1:                                                ; preds = %3, %0
  %.0 = phi i32 [ 0, %0 ], [ %4, %3 ]
  %2 = icmp slt i32 %.0, 10
  br i1 %2, label %3, label %5

3:                                                ; preds = %1
  %4 = add nsw i32 %.0, 1
  br label %1

5:                                                ; preds = %1
  %6 = sdiv i32 14, 2
  %7 = sub nsw i32 7, %6
  %8 = sdiv i32 28, 14
  %9 = add nsw i32 %8, 2
  %10 = mul nsw i32 %7, %9
  ret i32 %10
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  br label %1

1:                                                ; preds = %3, %0
  %.02 = phi i32 [ 1, %0 ], [ %4, %3 ]
  %.01 = phi i32 [ 0, %0 ], [ %.02, %3 ]
  %.0 = phi i32 [ 1, %0 ], [ %5, %3 ]
  %2 = icmp slt i32 %.0, undef
  br i1 %2, label %3, label %6

3:                                                ; preds = %1
  %4 = add nsw i32 %.01, %.02
  %5 = add nsw i32 %.0, 1
  br label %1

6:                                                ; preds = %1
  %7 = call i32 @func_a()
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.0-4ubuntu1 "}
