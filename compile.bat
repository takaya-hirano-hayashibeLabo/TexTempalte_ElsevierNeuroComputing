@echo off
@REM 公式のmakefileは使い方がわからなかったため作成


@REM build対象ファイル名 ----------------------------------------
set file=main


@REM buildされるファイルの出力先 ---------------------------------
set build_dir=build
mkdir %build_dir%


@REM コンパイル ------------------------------------------------------
pdflatex -output-directory %build_dir% %file%.tex
bibtex %build_dir%/%file%
pdflatex -output-directory %build_dir% %file%.tex
pdflatex -output-directory %build_dir% %file%.tex