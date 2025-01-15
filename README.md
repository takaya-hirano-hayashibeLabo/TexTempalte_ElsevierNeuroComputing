# tex custom template
Elsevier NeuroComputing用のtexテンプレート  
公式のやつを自分が使いやすいようにカスタマイズした  

## 投稿雑誌
Elsevier NeuroComputing

## Original template
以下のリンクの`elsarticle-template-num.tex`を使用  
https://www.sciencedirect.com/journal/neurocomputing/publish/guide-for-authors#:~:text=%E3%81%97%E3%81%BE%E3%81%99%E3%80%82-,%E3%83%A9%E3%83%86%E3%83%83%E3%82%AF%E3%82%B9,-LaTeX%20%E6%8F%90%E5%87%BA%E7%89%A9


## コンパイル用バッチファイル
生成されるファイルは`build_dir`に出力される
### 実行方法
~~~bash
compile.bat
~~~

### スクリプト
~~~bash
@echo off
@REM 公式のmakefileは使い方がわからなかったため作成


@REM build対象ファイル名 ----------------------------------------
set file=main


@REM buildされるファイルの出力先 ---------------------------------
set build_dir=build 
mkdir %build_dir%


@REM コンパイル ------------------------------------------------------
pdflatex -output-directory %build_dir% %file%.tex
pdflatex -output-directory %build_dir% %file%.tex
pdflatex -output-directory %build_dir% %file%.tex
~~~

## 数式などの参照方法
数式, 表, 図についてはカスタムコマンドを`main.tex`に作成  
数式, 表, 図の参照時の表記方法は, 他のElesevier Neurocomputingの他の論文を真似した  

### 参照コマンドリスト
| 対象     | 参照コマンド  | 表記サンプル           |
| -------- | ------------- | ---------------- |
| 数式     | \refeq{eq1}   | Eq. 1   |
| 表       | \reftab{tab1} | Table 1 |
| 図       | \reffig{fig1} | Fig. 1  |
| 参考文献 | \cite{ref1}   | [1]              |

### カスタムコマンド
~~~tex
\newcommand{\refeq}[1]{Eq. \ref{#1}}
\newcommand{\reftab}[1]{Table \ref{#1}}
\newcommand{\reffig}[1]{Fig. \ref{#1}}
~~~


## その他書式について
NeuroComputingの書式について, 以下のnotionにまとめた    
タイトルや著者名の書き方などは, こちらを参考にする  
https://discreet-eustoma-1b0.notion.site/17c41bdf4d898037a367d6d14acbf068?pvs=73