; ModuleID = './callconv/callconv.bc'
source_filename = "callconv.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx13.0.0"

@zz = local_unnamed_addr global i8 8, align 1
@e = external local_unnamed_addr global i32, align 4
@a = external local_unnamed_addr global i8, align 1
@b = external local_unnamed_addr global i8, align 1
@f = external local_unnamed_addr global i32, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind ssp willreturn writeonly uwtable
define i32 @func3(i8 signext %0) local_unnamed_addr #0 {
  store i32 -1, ptr @e, align 4, !tbaa !9
  ret i32 -1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly ssp willreturn uwtable
define signext i8 @func(i8 noundef signext %0) local_unnamed_addr #1 {
  %2 = load i8, ptr @a, align 1, !tbaa !13
  %3 = load i8, ptr @b, align 1, !tbaa !13
  %4 = mul i8 %3, %2
  %5 = add i8 %4, %0
  ret i8 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly ssp willreturn uwtable
define signext i8 @func2() local_unnamed_addr #1 {
  %1 = load i8, ptr @a, align 1, !tbaa !13
  ret i8 %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind ssp willreturn writeonly uwtable
define i32 @main() local_unnamed_addr #0 {
  store i32 4, ptr @f, align 4, !tbaa !9
  store i8 3, ptr @zz, align 1, !tbaa !13
  store i32 -1, ptr @e, align 4, !tbaa !9
  ret i32 -1
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind ssp willreturn writeonly uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind readonly ssp willreturn uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"branch-target-enforcement", i32 0}
!2 = !{i32 8, !"sign-return-address", i32 0}
!3 = !{i32 8, !"sign-return-address-all", i32 0}
!4 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!5 = !{i32 7, !"PIC Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 2}
!7 = !{i32 7, !"frame-pointer", i32 1}
!8 = !{!"clang version 15.0.0 (https://github.com/arkamnite/llvm-project 03c552fff835942a89744e3979ff7c2dfa33a658)"}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !11, i64 0}
!11 = !{!"omnipotent char", !12, i64 0}
!12 = !{!"Simple C/C++ TBAA"}
!13 = !{!11, !11, i64 0}
