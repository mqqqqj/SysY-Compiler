target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

;声明全局变量N
@N = dso_local constant i32 20, align 4
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1 ;printf int
@.str.1 = private unnamed_addr constant [4 x i8] c"%f\0A\00", align 1 ;printf double

;func_a
define dso_local void @func_a() #0 {
    %1 = alloca i32, align 4 ;a
    store i32 10, i32* %1, align 4 ;a = 10
    %2 = alloca i32, align 4 ;b
    store i32 2, i32* %2,align 4 ;b = 2
    %3 = alloca double, align 8 ;c
    store double 1.02e1, double* %3, align 8 ;c = 10.2
    %4 = alloca double, align 8 ;d
    store double 0.98e1, double* %4, align 8 ;d = 9.8
    %5 = alloca i32, align 4 ; sdiv_res
    %6 = load i32, i32* %1, align 4
    %7 = load i32, i32* %2, align 4
    %8 = sdiv i32 %6, %7 ;sdiv_res = a / b
    store i32 %8, i32* %5, align 4
    %9 = alloca double, align 8 ; sdiv_res
    %10 = load double, double* %3, align 8
    %11 = load double, double* %4, align 8
    %12 = fadd double  %10, %11
    store double %12, double* %9, align 8
    %13 = load i32, i32* %5, align 4
    %14 = call i32(i8*, ...)@printf(i8* getelementptr inbounds ([4 x i8],[4 x i8]* @.str, i64 0, i64 0), i32 %13)
    %15 = load double, double* %9, align 8
    %16 = call i32(i8*, ...)@printf(i8* getelementptr inbounds ([4 x i8],[4 x i8]* @.str.1, i64 0, i64 0), double %15)
    ret void
}

declare dso_local i32 @printf(i8*, ...) #1

;func_b
define dso_local void @func_b(i32* %0) #0 {
    %2 = alloca i32, align 4 ;tmp1
    %3 = alloca i32, align 4 ;tmp2
    %4 = alloca i32*, align 8 ;copy arr
    %5 = alloca i32*, align 8 ;ptr
    %6 = alloca i32, align 4 ; i
    store i32 0, i32* %2, align 4
    store i32 1, i32* %3, align 4
    store i32* %0, i32** %4, align 8
    %7 = load i32*, i32** %4, align 8
    store i32* %7,i32** %5, align 8
    store i32 0, i32* %6, align 4
    br label %8

8:
    %9 = load i32, i32* %2, align 4 ;9 = tmp1
    %10 = load i32, i32* %3, align 4 ;10 = tmp2
    %11 = add nsw i32 %9, %10 ; 11 = 9 + 10
    store i32 %11, i32* %3, align 4 ;store tmp2
    %12 = load i32, i32* %3, align 4 ; 12 = tmp2
    %13 = sub nsw i32 %12, %9 ; 13 = tmp2 - tmp1
    store i32 %13, i32* %2, align 4 ; store tmp1
    %14 = load i32, i32* %3, align 4 ; 从tmp2中取数
    %15 = load i32*, i32** %5, align 8 ;从ptr中取地址
    store i32 %14, i32* %15, align 4 ;*ptr = tmp2
    %16 = load i32*, i32** %5, align 8 ;16 = ptr
    %17 = load i32, i32* %16, align 4 ;17 = *ptr
    %18 = load i32, i32* %16, align 4 ;17 = *ptr,重复一个
    %19 = getelementptr inbounds i32, i32* %16, i64 1;ptr ++
    store i32* %19, i32** %5, align 8 ; ptr = 19
    %20 = load i32*, i32** %5, align 8 ;ptr
    %21 = load i32*, i32** %4, align 8 ;arr
    %22 = ptrtoint i32* %20 to i32
    %23 = ptrtoint i32* %21 to i32
    %24 = sub nsw i32 %22, %23
    %25 = sdiv exact i32 %24, 4
    %26 = icmp sge i32 %25, 20
    br i1 %26, label %30, label %27

27:
    %28 = load i32, i32* %6, align 4
    %29 = add nsw i32 %28, 1 ; i ++
    store i32 %29, i32* %6, align 4
    br label %8

30:
    ret void
}

;main
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [20 x i32], align 16
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @func_a()
  %4 = getelementptr inbounds [20 x i32], [20 x i32]* %2, i64 0, i64 0
  call void @func_b(i32* %4)
  store i32 0, i32* %3, align 4
  br label %5

5:    
  %6 = load i32, i32* %3, align 4
  %7 = icmp slt i32 %6, 20
  br i1 %7, label %8, label %17

8:    
  %9 = load i32, i32* %3, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [20 x i32], [20 x i32]* %2, i64 0, i64 %10
  %12 = load i32, i32* %11, align 4
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %12)
  br label %14

14:       
  %15 = load i32, i32* %3, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %3, align 4
  br label %5

17:     
    ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.0-4ubuntu1 "}

;llvm-as llvm.ll -o llvm.bc

;llc llvm.bc -filetype=obj -o llvm.o

;gcc llvm.o -o llvm