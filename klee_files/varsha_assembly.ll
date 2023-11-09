; ModuleID = 'Varsha et. al.bc'
source_filename = "Varsha et. al.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  br label %4

4:                                                ; preds = %59, %0
  %5 = load i32, i32* %2, align 4
  %6 = icmp ne i32 %5, 0
  %7 = xor i1 %6, true
  br i1 %7, label %8, label %60

8:                                                ; preds = %4
  %9 = bitcast i32* %3 to i8*
  call void @klee_make_symbolic(i8* noundef %9, i64 noundef 4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %10 = load i32, i32* %3, align 4
  %11 = icmp sgt i32 %10, 5
  br i1 %11, label %12, label %15

12:                                               ; preds = %8
  %13 = load i32, i32* %3, align 4
  %14 = add nsw i32 %13, 2
  store i32 %14, i32* %2, align 4
  br label %18

15:                                               ; preds = %8
  %16 = load i32, i32* %3, align 4
  %17 = mul nsw i32 %16, 2
  store i32 %17, i32* %2, align 4
  br label %18

18:                                               ; preds = %15, %12
  %19 = load i32, i32* %2, align 4
  %20 = icmp sgt i32 %19, 100
  br i1 %20, label %21, label %27

21:                                               ; preds = %18
  %22 = load i32, i32* %2, align 4
  %23 = icmp slt i32 %22, 180
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load i32, i32* %3, align 4
  %26 = add nsw i32 %25, 2
  store i32 %26, i32* %3, align 4
  br label %47

27:                                               ; preds = %21, %18
  %28 = load i32, i32* %2, align 4
  %29 = icmp sgt i32 %28, 60
  br i1 %29, label %30, label %36

30:                                               ; preds = %27
  %31 = load i32, i32* %2, align 4
  %32 = icmp slt i32 %31, 70
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load i32, i32* %3, align 4
  %35 = add nsw i32 %34, 15
  store i32 %35, i32* %3, align 4
  br label %46

36:                                               ; preds = %30, %27
  %37 = load i32, i32* %2, align 4
  %38 = icmp sgt i32 %37, 65
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load i32, i32* %3, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %3, align 4
  br label %45

42:                                               ; preds = %36
  %43 = load i32, i32* %3, align 4
  %44 = add nsw i32 %43, 5
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %42, %39
  br label %46

46:                                               ; preds = %45, %33
  br label %47

47:                                               ; preds = %46, %24
  %48 = load i32, i32* %3, align 4
  %49 = icmp slt i32 %48, 50
  br i1 %49, label %50, label %56

50:                                               ; preds = %47
  %51 = load i32, i32* %3, align 4
  %52 = icmp sgt i32 %51, 44
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load i32, i32* %3, align 4
  %55 = add nsw i32 %54, 65
  store i32 %55, i32* %3, align 4
  br label %59

56:                                               ; preds = %50, %47
  %57 = load i32, i32* %3, align 4
  %58 = add nsw i32 %57, 20
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %56, %53
  br label %4, !llvm.loop !6

60:                                               ; preds = %4
  %61 = load i32, i32* %1, align 4
  ret i32 %61
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
