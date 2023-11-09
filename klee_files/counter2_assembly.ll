; ModuleID = 'counter2.bc'
source_filename = "counter2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"a\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test00(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp slt i32 %3, 10
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = load i32, i32* %2, align 4
  %7 = add nsw i32 %6, 10
  store i32 %7, i32* %2, align 4
  br label %11

8:                                                ; preds = %1
  %9 = load i32, i32* %2, align 4
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* %2, align 4
  br label %11

11:                                               ; preds = %8, %5
  %12 = load i32, i32* %2, align 4
  %13 = icmp sgt i32 %12, 50
  br i1 %13, label %14, label %17

14:                                               ; preds = %11
  %15 = load i32, i32* %2, align 4
  %16 = add nsw i32 %15, 2
  store i32 %16, i32* %2, align 4
  br label %20

17:                                               ; preds = %11
  %18 = load i32, i32* %2, align 4
  %19 = add nsw i32 %18, 20
  store i32 %19, i32* %2, align 4
  br label %20

20:                                               ; preds = %17, %14
  %21 = load i32, i32* %2, align 4
  %22 = icmp sgt i32 %21, 100
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load i32, i32* %2, align 4
  %25 = add nsw i32 %24, 3
  store i32 %25, i32* %2, align 4
  br label %29

26:                                               ; preds = %20
  %27 = load i32, i32* %2, align 4
  %28 = add nsw i32 %27, 30
  store i32 %28, i32* %2, align 4
  br label %29

29:                                               ; preds = %26, %23
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @main() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (i32*, i64, i8*, ...) bitcast (i32 (...)* @klee_make_symbolic to i32 (i32*, i64, i8*, ...)*)(i32* noundef %1, i64 noundef 4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %3 = load i32, i32* %1, align 4
  call void @test00(i32 noundef %3)
  ret void
}

declare i32 @klee_make_symbolic(...) #1

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
