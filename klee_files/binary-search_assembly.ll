; ModuleID = 'binary_search.bc'
source_filename = "binary_search.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__const.main.arr = private unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16
@.str = private unnamed_addr constant [4 x i8] c"ele\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [10 x i32], align 16
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %10 = bitcast [10 x i32]* %2 to i8*
  %11 = call i8* @memcpy(i8* %10, i8* bitcast ([10 x i32]* @__const.main.arr to i8*), i64 40)
  store i32 6, i32* %3, align 4
  store i32 0, i32* %5, align 4
  %12 = bitcast i32* %3 to i8*
  call void @klee_make_symbolic(i8* noundef %12, i64 noundef 4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  store i32 9, i32* %7, align 4
  br label %13

13:                                               ; preds = %42, %0
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp sle i32 %14, %15
  br i1 %16, label %17, label %43

17:                                               ; preds = %13
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %7, align 4
  %20 = add nsw i32 %18, %19
  %21 = sdiv i32 %20, 2
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [10 x i32], [10 x i32]* %2, i64 0, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %3, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %17
  store i32 1, i32* %5, align 4
  %29 = load i32, i32* %8, align 4
  store i32 %29, i32* %4, align 4
  br label %43

30:                                               ; preds = %17
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [10 x i32], [10 x i32]* %2, i64 0, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %3, align 4
  %36 = icmp sgt i32 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  %38 = load i32, i32* %8, align 4
  store i32 %38, i32* %7, align 4
  br label %41

39:                                               ; preds = %30
  %40 = load i32, i32* %8, align 4
  store i32 %40, i32* %6, align 4
  br label %41

41:                                               ; preds = %39, %37
  br label %42

42:                                               ; preds = %41
  br label %13, !llvm.loop !12

43:                                               ; preds = %28, %13
  %44 = load i32, i32* %5, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  %47 = load i32, i32* %4, align 4
  store i32 %47, i32* %1, align 4
  br label %49

48:                                               ; preds = %43
  store i32 -1, i32* %1, align 4
  br label %49

49:                                               ; preds = %48, %46
  %50 = load i32, i32* %1, align 4
  ret i32 %50
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* %0, i8* %1, i64 %2) #3 !dbg !14 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !24, metadata !DIExpression()), !dbg !25
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !26, metadata !DIExpression()), !dbg !27
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !28, metadata !DIExpression()), !dbg !29
  call void @llvm.dbg.declare(metadata i8** %7, metadata !30, metadata !DIExpression()), !dbg !33
  %9 = load i8*, i8** %4, align 8, !dbg !34
  store i8* %9, i8** %7, align 8, !dbg !33
  call void @llvm.dbg.declare(metadata i8** %8, metadata !35, metadata !DIExpression()), !dbg !38
  %10 = load i8*, i8** %5, align 8, !dbg !39
  store i8* %10, i8** %8, align 8, !dbg !38
  br label %11, !dbg !40

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !41
  %13 = add i64 %12, -1, !dbg !41
  store i64 %13, i64* %6, align 8, !dbg !41
  %14 = icmp ugt i64 %12, 0, !dbg !42
  br i1 %14, label %15, label %21, !dbg !40

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !43
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !43
  store i8* %17, i8** %8, align 8, !dbg !43
  %18 = load i8, i8* %16, align 1, !dbg !44
  %19 = load i8*, i8** %7, align 8, !dbg !45
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !45
  store i8* %20, i8** %7, align 8, !dbg !45
  store i8 %18, i8* %19, align 1, !dbg !46
  br label %11, !dbg !40, !llvm.loop !47

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !48
  ret i8* %22, !dbg !49
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #4

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6}
!llvm.ident = !{!7, !8}
!llvm.dbg.cu = !{!9}

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
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
!14 = distinct !DISubprogram(name: "memcpy", scope: !15, file: !15, line: 12, type: !16, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, retainedNodes: !11)
!15 = !DIFile(filename: "src/runtime/Freestanding/memcpy.c", directory: "/build/klee/parts/klee")
!16 = !DISubroutineType(types: !17)
!17 = !{!18, !18, !19, !21}
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !22, line: 46, baseType: !23)
!22 = !DIFile(filename: "/usr/lib/llvm-13/lib/clang/13.0.1/include/stddef.h", directory: "")
!23 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!24 = !DILocalVariable(name: "destaddr", arg: 1, scope: !14, file: !15, line: 12, type: !18)
!25 = !DILocation(line: 12, column: 20, scope: !14)
!26 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !14, file: !15, line: 12, type: !19)
!27 = !DILocation(line: 12, column: 42, scope: !14)
!28 = !DILocalVariable(name: "len", arg: 3, scope: !14, file: !15, line: 12, type: !21)
!29 = !DILocation(line: 12, column: 58, scope: !14)
!30 = !DILocalVariable(name: "dest", scope: !14, file: !15, line: 13, type: !31)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!32 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!33 = !DILocation(line: 13, column: 9, scope: !14)
!34 = !DILocation(line: 13, column: 16, scope: !14)
!35 = !DILocalVariable(name: "src", scope: !14, file: !15, line: 14, type: !36)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !32)
!38 = !DILocation(line: 14, column: 15, scope: !14)
!39 = !DILocation(line: 14, column: 21, scope: !14)
!40 = !DILocation(line: 16, column: 3, scope: !14)
!41 = !DILocation(line: 16, column: 13, scope: !14)
!42 = !DILocation(line: 16, column: 16, scope: !14)
!43 = !DILocation(line: 17, column: 19, scope: !14)
!44 = !DILocation(line: 17, column: 15, scope: !14)
!45 = !DILocation(line: 17, column: 10, scope: !14)
!46 = !DILocation(line: 17, column: 13, scope: !14)
!47 = distinct !{!47, !40, !43, !13}
!48 = !DILocation(line: 18, column: 10, scope: !14)
!49 = !DILocation(line: 18, column: 3, scope: !14)
