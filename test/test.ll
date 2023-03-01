; ModuleID = './test/test.bc'
source_filename = "test.c"
target datalayout = "e-p:16:8-i8:8-i16:16-i32:16-i64:16-f32:8-f64:8-n8-a:8"
target triple = "gameboy"

%struct.sprite = type { i8, i8, i8, i8 }

@mysprite = dso_local local_unnamed_addr global %struct.sprite { i8 34, i8 45, i8 1, i8 0 }, align 1
@mysprite2 = dso_local local_unnamed_addr global %struct.sprite { i8 34, i8 45, i8 0, i8 0 }, align 1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind willreturn
define dso_local void @move_sprite(ptr nocapture noundef %t, i8 noundef %x) local_unnamed_addr #0 {
entry:
  %0 = load i8, ptr %t, align 1, !tbaa !3
  %add = add i8 %0, %x
  store i8 %add, ptr %t, align 1, !tbaa !3
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn writeonly
define dso_local i16 @main() local_unnamed_addr #1 {
entry:
  store i8 32, ptr inttoptr (i16 -256 to ptr), align 256, !tbaa !7
  ret i16 0
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 7, !"frame-pointer", i32 2}
!2 = !{!"clang version 15.0.0 (https://github.com/arkamnite/llvm-project 51af85a38e0547b2009a477004f88d0007425494)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"", !5, i64 0, !5, i64 1, !5, i64 2, !5, i64 3}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!5, !5, i64 0}
