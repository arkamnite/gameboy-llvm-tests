; ModuleID = './test/test.bc'
source_filename = "test.c"
target datalayout = "e-p:16:8-i8:8-i16:16-i32:16-i64:16-f32:8-f64:8-n8-a:8"
target triple = "gameboy"

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone willreturn
define dso_local i8 @fib(i8 noundef %start) local_unnamed_addr #0 {
entry:
  %add5 = add i8 %start, 2
  ret i8 %add5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone willreturn
define dso_local i16 @main(i16 noundef %argc, ptr nocapture noundef readnone %argv) local_unnamed_addr #0 {
entry:
  %conv = trunc i16 %argc to i8
  %add5.i = add i8 %conv, 2
  %conv1 = sext i8 %add5.i to i16
  ret i16 %conv1
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind readnone willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 7, !"frame-pointer", i32 2}
!2 = !{!"clang version 15.0.0 (https://github.com/arkamnite/llvm-project 1f3437014c5dd96123a16d16141ec1bf92737965)"}
