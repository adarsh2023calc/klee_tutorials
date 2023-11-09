; ModuleID = 'sort.bc'
source_filename = "sort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [25 x i8] c"input: [%d, %d, %d, %d]\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"insertion_sort: [%d, %d, %d, %d]\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"bubble_sort   : [%d, %d, %d, %d]\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"temp1[i] == temp2[i]\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"sort.c\00", align 1
@__PRETTY_FUNCTION__.test = private unnamed_addr constant [31 x i8] c"void test(int *, unsigned int)\00", align 1
@__const.main.input = private unnamed_addr constant [4 x i32] [i32 4, i32 3, i32 2, i32 1], align 16
@.str.5 = private unnamed_addr constant [6 x i8] c"input\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bubble_sort(i32* noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  br label %8

8:                                                ; preds = %2
  store i32 1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %50, %8
  %10 = load i32, i32* %6, align 4
  %11 = add i32 %10, 1
  %12 = load i32, i32* %4, align 4
  %13 = icmp ult i32 %11, %12
  br i1 %13, label %14, label %53

14:                                               ; preds = %9
  %15 = load i32*, i32** %3, align 8
  %16 = load i32, i32* %6, align 4
  %17 = add i32 %16, 1
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %15, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = load i32*, i32** %3, align 8
  %22 = load i32, i32* %6, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = icmp slt i32 %20, %25
  br i1 %26, label %27, label %49

27:                                               ; preds = %14
  %28 = load i32*, i32** %3, align 8
  %29 = load i32, i32* %6, align 4
  %30 = add i32 %29, 1
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %28, i64 %31
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %7, align 4
  %34 = load i32*, i32** %3, align 8
  %35 = load i32, i32* %6, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = load i32*, i32** %3, align 8
  %40 = load i32, i32* %6, align 4
  %41 = add i32 %40, 1
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %39, i64 %42
  store i32 %38, i32* %43, align 4
  %44 = load i32, i32* %7, align 4
  %45 = load i32*, i32** %3, align 8
  %46 = load i32, i32* %6, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  store i32 %44, i32* %48, align 4
  store i32 0, i32* %5, align 4
  br label %49

49:                                               ; preds = %27, %14
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %6, align 4
  %52 = add i32 %51, 1
  store i32 %52, i32* %6, align 4
  br label %9, !llvm.loop !14

53:                                               ; preds = %9
  br label %54

54:                                               ; preds = %53
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @insertion_sort(i32* noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = zext i32 %7 to i64
  %9 = mul i64 4, %8
  %10 = call noalias i8* @malloc(i64 noundef %9) #7
  %11 = bitcast i8* %10 to i32*
  store i32* %11, i32** %5, align 8
  store i32 0, i32* %6, align 4
  br label %12

12:                                               ; preds = %24, %2
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %13, %14
  br i1 %15, label %16, label %27

16:                                               ; preds = %12
  %17 = load i32*, i32** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = load i32*, i32** %3, align 8
  %20 = load i32, i32* %6, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  call void @insert_ordered(i32* noundef %17, i32 noundef %18, i32 noundef %23)
  br label %24

24:                                               ; preds = %16
  %25 = load i32, i32* %6, align 4
  %26 = add i32 %25, 1
  store i32 %26, i32* %6, align 4
  br label %12, !llvm.loop !16

27:                                               ; preds = %12
  %28 = load i32*, i32** %3, align 8
  %29 = bitcast i32* %28 to i8*
  %30 = load i32*, i32** %5, align 8
  %31 = bitcast i32* %30 to i8*
  %32 = load i32, i32* %4, align 4
  %33 = zext i32 %32 to i64
  %34 = mul i64 4, %33
  %35 = call i8* @memcpy(i8* %29, i8* %31, i64 %34)
  %36 = load i32*, i32** %5, align 8
  %37 = bitcast i32* %36 to i8*
  call void @free(i8* noundef %37) #7
  ret void
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @insert_ordered(i32* noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %39, %3
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %9, %10
  br i1 %11, label %12, label %42

12:                                               ; preds = %8
  %13 = load i32, i32* %6, align 4
  %14 = load i32*, i32** %4, align 8
  %15 = load i32, i32* %7, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = icmp slt i32 %13, %18
  br i1 %19, label %20, label %38

20:                                               ; preds = %12
  %21 = load i32*, i32** %4, align 8
  %22 = load i32, i32* %7, align 4
  %23 = add i32 %22, 1
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %21, i64 %24
  %26 = bitcast i32* %25 to i8*
  %27 = load i32*, i32** %4, align 8
  %28 = load i32, i32* %7, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = bitcast i32* %30 to i8*
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* %7, align 4
  %34 = sub i32 %32, %33
  %35 = zext i32 %34 to i64
  %36 = mul i64 4, %35
  %37 = call i8* @memmove(i8* %26, i8* %31, i64 %36)
  br label %42

38:                                               ; preds = %12
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %7, align 4
  %41 = add i32 %40, 1
  store i32 %41, i32* %7, align 4
  br label %8, !llvm.loop !17

42:                                               ; preds = %20, %8
  %43 = load i32, i32* %6, align 4
  %44 = load i32*, i32** %4, align 8
  %45 = load i32, i32* %7, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  store i32 %43, i32* %47, align 4
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: nounwind
declare void @free(i8* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test(i32* noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = zext i32 %8 to i64
  %10 = mul i64 4, %9
  %11 = call noalias i8* @malloc(i64 noundef %10) #7
  %12 = bitcast i8* %11 to i32*
  store i32* %12, i32** %5, align 8
  %13 = load i32, i32* %4, align 4
  %14 = zext i32 %13 to i64
  %15 = mul i64 4, %14
  %16 = call noalias i8* @malloc(i64 noundef %15) #7
  %17 = bitcast i8* %16 to i32*
  store i32* %17, i32** %6, align 8
  %18 = load i32*, i32** %3, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32*, i32** %3, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32*, i32** %3, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 2
  %26 = load i32, i32* %25, align 4
  %27 = load i32*, i32** %3, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 3
  %29 = load i32, i32* %28, align 4
  %30 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef %20, i32 noundef %23, i32 noundef %26, i32 noundef %29)
  %31 = load i32*, i32** %5, align 8
  %32 = bitcast i32* %31 to i8*
  %33 = load i32*, i32** %3, align 8
  %34 = bitcast i32* %33 to i8*
  %35 = call i8* @memcpy(i8* %32, i8* %34, i64 16)
  %36 = load i32*, i32** %6, align 8
  %37 = bitcast i32* %36 to i8*
  %38 = load i32*, i32** %3, align 8
  %39 = bitcast i32* %38 to i8*
  %40 = call i8* @memcpy(i8* %37, i8* %39, i64 16)
  %41 = load i32*, i32** %5, align 8
  call void @insertion_sort(i32* noundef %41, i32 noundef 4)
  %42 = load i32*, i32** %6, align 8
  call void @bubble_sort(i32* noundef %42, i32 noundef 4)
  %43 = load i32*, i32** %5, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32*, i32** %5, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32*, i32** %5, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 2
  %51 = load i32, i32* %50, align 4
  %52 = load i32*, i32** %5, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 3
  %54 = load i32, i32* %53, align 4
  %55 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 noundef %45, i32 noundef %48, i32 noundef %51, i32 noundef %54)
  %56 = load i32*, i32** %6, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32*, i32** %6, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32*, i32** %6, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 2
  %64 = load i32, i32* %63, align 4
  %65 = load i32*, i32** %6, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 3
  %67 = load i32, i32* %66, align 4
  %68 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 noundef %58, i32 noundef %61, i32 noundef %64, i32 noundef %67)
  store i32 0, i32* %7, align 4
  br label %69

69:                                               ; preds = %88, %2
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* %4, align 4
  %72 = icmp ne i32 %70, %71
  br i1 %72, label %73, label %91

73:                                               ; preds = %69
  %74 = load i32*, i32** %5, align 8
  %75 = load i32, i32* %7, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = load i32*, i32** %6, align 8
  %80 = load i32, i32* %7, align 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = icmp eq i32 %78, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %73
  br label %87

86:                                               ; preds = %73
  call void @__assert_fail(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 noundef 68, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @__PRETTY_FUNCTION__.test, i64 0, i64 0)) #8
  unreachable

87:                                               ; preds = %85
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %7, align 4
  %90 = add i32 %89, 1
  store i32 %90, i32* %7, align 4
  br label %69, !llvm.loop !18

91:                                               ; preds = %69
  %92 = load i32*, i32** %5, align 8
  %93 = bitcast i32* %92 to i8*
  call void @free(i8* noundef %93) #7
  %94 = load i32*, i32** %6, align 8
  %95 = bitcast i32* %94 to i8*
  call void @free(i8* noundef %95) #7
  ret void
}

declare i32 @printf(i8* noundef, ...) #3

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [4 x i32], align 16
  store i32 0, i32* %1, align 4
  %3 = bitcast [4 x i32]* %2 to i8*
  %4 = call i8* @memcpy(i8* %3, i8* bitcast ([4 x i32]* @__const.main.input to i8*), i64 16)
  %5 = bitcast [4 x i32]* %2 to i8*
  call void @klee_make_symbolic(i8* noundef %5, i64 noundef 16, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %6 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0
  call void @test(i32* noundef %6, i32 noundef 4)
  ret i32 0
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* %0, i8* %1, i64 %2) #5 !dbg !19 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !29, metadata !DIExpression()), !dbg !30
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !31, metadata !DIExpression()), !dbg !32
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !33, metadata !DIExpression()), !dbg !34
  call void @llvm.dbg.declare(metadata i8** %7, metadata !35, metadata !DIExpression()), !dbg !38
  %9 = load i8*, i8** %4, align 8, !dbg !39
  store i8* %9, i8** %7, align 8, !dbg !38
  call void @llvm.dbg.declare(metadata i8** %8, metadata !40, metadata !DIExpression()), !dbg !43
  %10 = load i8*, i8** %5, align 8, !dbg !44
  store i8* %10, i8** %8, align 8, !dbg !43
  br label %11, !dbg !45

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !46
  %13 = add i64 %12, -1, !dbg !46
  store i64 %13, i64* %6, align 8, !dbg !46
  %14 = icmp ugt i64 %12, 0, !dbg !47
  br i1 %14, label %15, label %21, !dbg !45

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !48
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !48
  store i8* %17, i8** %8, align 8, !dbg !48
  %18 = load i8, i8* %16, align 1, !dbg !49
  %19 = load i8*, i8** %7, align 8, !dbg !50
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !50
  store i8* %20, i8** %7, align 8, !dbg !50
  store i8 %18, i8* %19, align 1, !dbg !51
  br label %11, !dbg !45, !llvm.loop !52

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !53
  ret i8* %22, !dbg !54
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #6

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memmove(i8* %0, i8* %1, i64 %2) #5 !dbg !55 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !57, metadata !DIExpression()), !dbg !58
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !59, metadata !DIExpression()), !dbg !60
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !61, metadata !DIExpression()), !dbg !62
  call void @llvm.dbg.declare(metadata i8** %8, metadata !63, metadata !DIExpression()), !dbg !64
  %10 = load i8*, i8** %5, align 8, !dbg !65
  store i8* %10, i8** %8, align 8, !dbg !64
  call void @llvm.dbg.declare(metadata i8** %9, metadata !66, metadata !DIExpression()), !dbg !67
  %11 = load i8*, i8** %6, align 8, !dbg !68
  store i8* %11, i8** %9, align 8, !dbg !67
  %12 = load i8*, i8** %6, align 8, !dbg !69
  %13 = load i8*, i8** %5, align 8, !dbg !71
  %14 = icmp eq i8* %12, %13, !dbg !72
  br i1 %14, label %15, label %17, !dbg !73

15:                                               ; preds = %3
  %16 = load i8*, i8** %5, align 8, !dbg !74
  store i8* %16, i8** %4, align 8, !dbg !75
  br label %52, !dbg !75

17:                                               ; preds = %3
  %18 = load i8*, i8** %6, align 8, !dbg !76
  %19 = load i8*, i8** %5, align 8, !dbg !78
  %20 = icmp ugt i8* %18, %19, !dbg !79
  br i1 %20, label %21, label %31, !dbg !80

21:                                               ; preds = %17, %25
  %22 = load i64, i64* %7, align 8, !dbg !81
  %23 = add i64 %22, -1, !dbg !81
  store i64 %23, i64* %7, align 8, !dbg !81
  %24 = icmp ne i64 %22, 0, !dbg !83
  br i1 %24, label %25, label %50, !dbg !83

25:                                               ; preds = %21
  %26 = load i8*, i8** %9, align 8, !dbg !84
  %27 = getelementptr inbounds i8, i8* %26, i32 1, !dbg !84
  store i8* %27, i8** %9, align 8, !dbg !84
  %28 = load i8, i8* %26, align 1, !dbg !85
  %29 = load i8*, i8** %8, align 8, !dbg !86
  %30 = getelementptr inbounds i8, i8* %29, i32 1, !dbg !86
  store i8* %30, i8** %8, align 8, !dbg !86
  store i8 %28, i8* %29, align 1, !dbg !87
  br label %21, !dbg !83, !llvm.loop !88

31:                                               ; preds = %17
  %32 = load i64, i64* %7, align 8, !dbg !89
  %33 = sub i64 %32, 1, !dbg !91
  %34 = load i8*, i8** %8, align 8, !dbg !92
  %35 = getelementptr inbounds i8, i8* %34, i64 %33, !dbg !92
  store i8* %35, i8** %8, align 8, !dbg !92
  %36 = load i64, i64* %7, align 8, !dbg !93
  %37 = sub i64 %36, 1, !dbg !94
  %38 = load i8*, i8** %9, align 8, !dbg !95
  %39 = getelementptr inbounds i8, i8* %38, i64 %37, !dbg !95
  store i8* %39, i8** %9, align 8, !dbg !95
  br label %40, !dbg !96

40:                                               ; preds = %44, %31
  %41 = load i64, i64* %7, align 8, !dbg !97
  %42 = add i64 %41, -1, !dbg !97
  store i64 %42, i64* %7, align 8, !dbg !97
  %43 = icmp ne i64 %41, 0, !dbg !96
  br i1 %43, label %44, label %50, !dbg !96

44:                                               ; preds = %40
  %45 = load i8*, i8** %9, align 8, !dbg !98
  %46 = getelementptr inbounds i8, i8* %45, i32 -1, !dbg !98
  store i8* %46, i8** %9, align 8, !dbg !98
  %47 = load i8, i8* %45, align 1, !dbg !99
  %48 = load i8*, i8** %8, align 8, !dbg !100
  %49 = getelementptr inbounds i8, i8* %48, i32 -1, !dbg !100
  store i8* %49, i8** %8, align 8, !dbg !100
  store i8 %47, i8* %48, align 1, !dbg !101
  br label %40, !dbg !96, !llvm.loop !102

50:                                               ; preds = %40, %21
  %51 = load i8*, i8** %5, align 8, !dbg !103
  store i8* %51, i8** %4, align 8, !dbg !104
  br label %52, !dbg !104

52:                                               ; preds = %50, %15
  %53 = load i8*, i8** %4, align 8, !dbg !105
  ret i8* %53, !dbg !105
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6}
!llvm.ident = !{!7, !8, !8}
!llvm.dbg.cu = !{!9, !12}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{i32 7, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!8 = !{!"Ubuntu clang version 13.0.1-2ubuntu2.2"}
!9 = distinct !DICompileUnit(language: DW_LANG_C99, file: !10, producer: "Ubuntu clang version 13.0.1-2ubuntu2.2", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !11, splitDebugInlining: false, nameTableKind: None)
!10 = !DIFile(filename: "/build/klee/parts/klee/src/runtime/Freestanding/memcpy.c", directory: "/build/klee/parts/klee/build/runtime/Freestanding")
!11 = !{}
!12 = distinct !DICompileUnit(language: DW_LANG_C99, file: !13, producer: "Ubuntu clang version 13.0.1-2ubuntu2.2", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !11, splitDebugInlining: false, nameTableKind: None)
!13 = !DIFile(filename: "/build/klee/parts/klee/src/runtime/Freestanding/memmove.c", directory: "/build/klee/parts/klee/build/runtime/Freestanding")
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.mustprogress"}
!16 = distinct !{!16, !15}
!17 = distinct !{!17, !15}
!18 = distinct !{!18, !15}
!19 = distinct !DISubprogram(name: "memcpy", scope: !20, file: !20, line: 12, type: !21, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, retainedNodes: !11)
!20 = !DIFile(filename: "src/runtime/Freestanding/memcpy.c", directory: "/build/klee/parts/klee")
!21 = !DISubroutineType(types: !22)
!22 = !{!23, !23, !24, !26}
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !27, line: 46, baseType: !28)
!27 = !DIFile(filename: "/usr/lib/llvm-13/lib/clang/13.0.1/include/stddef.h", directory: "")
!28 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!29 = !DILocalVariable(name: "destaddr", arg: 1, scope: !19, file: !20, line: 12, type: !23)
!30 = !DILocation(line: 12, column: 20, scope: !19)
!31 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !19, file: !20, line: 12, type: !24)
!32 = !DILocation(line: 12, column: 42, scope: !19)
!33 = !DILocalVariable(name: "len", arg: 3, scope: !19, file: !20, line: 12, type: !26)
!34 = !DILocation(line: 12, column: 58, scope: !19)
!35 = !DILocalVariable(name: "dest", scope: !19, file: !20, line: 13, type: !36)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!38 = !DILocation(line: 13, column: 9, scope: !19)
!39 = !DILocation(line: 13, column: 16, scope: !19)
!40 = !DILocalVariable(name: "src", scope: !19, file: !20, line: 14, type: !41)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !37)
!43 = !DILocation(line: 14, column: 15, scope: !19)
!44 = !DILocation(line: 14, column: 21, scope: !19)
!45 = !DILocation(line: 16, column: 3, scope: !19)
!46 = !DILocation(line: 16, column: 13, scope: !19)
!47 = !DILocation(line: 16, column: 16, scope: !19)
!48 = !DILocation(line: 17, column: 19, scope: !19)
!49 = !DILocation(line: 17, column: 15, scope: !19)
!50 = !DILocation(line: 17, column: 10, scope: !19)
!51 = !DILocation(line: 17, column: 13, scope: !19)
!52 = distinct !{!52, !45, !48, !15}
!53 = !DILocation(line: 18, column: 10, scope: !19)
!54 = !DILocation(line: 18, column: 3, scope: !19)
!55 = distinct !DISubprogram(name: "memmove", scope: !56, file: !56, line: 12, type: !21, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !12, retainedNodes: !11)
!56 = !DIFile(filename: "src/runtime/Freestanding/memmove.c", directory: "/build/klee/parts/klee")
!57 = !DILocalVariable(name: "dst", arg: 1, scope: !55, file: !56, line: 12, type: !23)
!58 = !DILocation(line: 12, column: 21, scope: !55)
!59 = !DILocalVariable(name: "src", arg: 2, scope: !55, file: !56, line: 12, type: !24)
!60 = !DILocation(line: 12, column: 38, scope: !55)
!61 = !DILocalVariable(name: "count", arg: 3, scope: !55, file: !56, line: 12, type: !26)
!62 = !DILocation(line: 12, column: 50, scope: !55)
!63 = !DILocalVariable(name: "a", scope: !55, file: !56, line: 13, type: !36)
!64 = !DILocation(line: 13, column: 9, scope: !55)
!65 = !DILocation(line: 13, column: 13, scope: !55)
!66 = !DILocalVariable(name: "b", scope: !55, file: !56, line: 14, type: !41)
!67 = !DILocation(line: 14, column: 15, scope: !55)
!68 = !DILocation(line: 14, column: 19, scope: !55)
!69 = !DILocation(line: 16, column: 7, scope: !70)
!70 = distinct !DILexicalBlock(scope: !55, file: !56, line: 16, column: 7)
!71 = !DILocation(line: 16, column: 14, scope: !70)
!72 = !DILocation(line: 16, column: 11, scope: !70)
!73 = !DILocation(line: 16, column: 7, scope: !55)
!74 = !DILocation(line: 17, column: 12, scope: !70)
!75 = !DILocation(line: 17, column: 5, scope: !70)
!76 = !DILocation(line: 19, column: 7, scope: !77)
!77 = distinct !DILexicalBlock(scope: !55, file: !56, line: 19, column: 7)
!78 = !DILocation(line: 19, column: 13, scope: !77)
!79 = !DILocation(line: 19, column: 11, scope: !77)
!80 = !DILocation(line: 19, column: 7, scope: !55)
!81 = !DILocation(line: 20, column: 17, scope: !82)
!82 = distinct !DILexicalBlock(scope: !77, file: !56, line: 19, column: 18)
!83 = !DILocation(line: 20, column: 5, scope: !82)
!84 = !DILocation(line: 21, column: 16, scope: !82)
!85 = !DILocation(line: 21, column: 14, scope: !82)
!86 = !DILocation(line: 21, column: 9, scope: !82)
!87 = !DILocation(line: 21, column: 12, scope: !82)
!88 = distinct !{!88, !83, !84, !15}
!89 = !DILocation(line: 23, column: 10, scope: !90)
!90 = distinct !DILexicalBlock(scope: !77, file: !56, line: 22, column: 10)
!91 = !DILocation(line: 23, column: 16, scope: !90)
!92 = !DILocation(line: 23, column: 7, scope: !90)
!93 = !DILocation(line: 24, column: 10, scope: !90)
!94 = !DILocation(line: 24, column: 16, scope: !90)
!95 = !DILocation(line: 24, column: 7, scope: !90)
!96 = !DILocation(line: 25, column: 5, scope: !90)
!97 = !DILocation(line: 25, column: 17, scope: !90)
!98 = !DILocation(line: 26, column: 16, scope: !90)
!99 = !DILocation(line: 26, column: 14, scope: !90)
!100 = !DILocation(line: 26, column: 9, scope: !90)
!101 = !DILocation(line: 26, column: 12, scope: !90)
!102 = distinct !{!102, !96, !98, !15}
!103 = !DILocation(line: 29, column: 10, scope: !55)
!104 = !DILocation(line: 29, column: 3, scope: !55)
!105 = !DILocation(line: 30, column: 1, scope: !55)
