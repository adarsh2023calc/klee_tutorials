; ModuleID = 'dracula.bc'
source_filename = "dracula.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"pieces\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !10 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !15, metadata !DIExpression()), !dbg !16
  %3 = bitcast i32* %2 to i8*, !dbg !17
  call void @klee_make_symbolic(i8* noundef %3, i64 noundef 4, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0)), !dbg !18
  %4 = load i32, i32* %2, align 4, !dbg !19
  %5 = srem i32 %4, 2, !dbg !21
  %6 = icmp eq i32 %5, 0, !dbg !22
  br i1 %6, label %10, label %7, !dbg !23

7:                                                ; preds = %0
  %8 = load i32, i32* %2, align 4, !dbg !24
  %9 = icmp eq i32 %8, 1, !dbg !25
  br i1 %9, label %10, label %11, !dbg !26

10:                                               ; preds = %7, %0
  store i32 1, i32* %1, align 4, !dbg !27
  br label %12, !dbg !27

11:                                               ; preds = %7
  store i32 0, i32* %1, align 4, !dbg !28
  br label %12, !dbg !28

12:                                               ; preds = %11, %10
  %13 = load i32, i32* %1, align 4, !dbg !29
  ret i32 %13, !dbg !29
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "dracula.c", directory: "/home/adarsh2023/research/klee/klee_files", checksumkind: CSK_MD5, checksum: "a83fcb3bf8c621f8a313aaa3a15f6537")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 7, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{i32 7, !"frame-pointer", i32 2}
!9 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!10 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 2, type: !11, scopeLine: 3, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !14)
!11 = !DISubroutineType(types: !12)
!12 = !{!13}
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !{}
!15 = !DILocalVariable(name: "pieces", scope: !10, file: !1, line: 4, type: !13)
!16 = !DILocation(line: 4, column: 10, scope: !10)
!17 = !DILocation(line: 5, column: 25, scope: !10)
!18 = !DILocation(line: 5, column: 6, scope: !10)
!19 = !DILocation(line: 6, column: 10, scope: !20)
!20 = distinct !DILexicalBlock(scope: !10, file: !1, line: 6, column: 10)
!21 = !DILocation(line: 6, column: 17, scope: !20)
!22 = !DILocation(line: 6, column: 22, scope: !20)
!23 = !DILocation(line: 6, column: 26, scope: !20)
!24 = !DILocation(line: 6, column: 29, scope: !20)
!25 = !DILocation(line: 6, column: 36, scope: !20)
!26 = !DILocation(line: 6, column: 10, scope: !10)
!27 = !DILocation(line: 6, column: 42, scope: !20)
!28 = !DILocation(line: 8, column: 11, scope: !20)
!29 = !DILocation(line: 11, column: 1, scope: !10)
