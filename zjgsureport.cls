\ProvidesClass{ZJGSUreport}
% 设置正文字体大小为小四(12pt，normalsize)
% small为五号，large为四号，myLarge为三号，myHuge为一号
% 加粗特定中文，使用\pmb命令，可不安装其他字体
% 以下是所需的宏包，可以根据个人的需要继续添加
\LoadClass[a4paper,12pt,UTF8]{ctexart}
\RequirePackage{graphicx}
\usepackage[margin=2cm]{geometry}
\usepackage{fancyhdr}
\usepackage{lipsum}
\usepackage{zhlipsum}
\usepackage{amsbsy}
\usepackage{amsfonts}
\usepackage{amsgen}
\usepackage{amsmath}
\usepackage{amssymb}
\usepackage{amsopn}
\usepackage{enumerate}
\usepackage{enumitem}
\usepackage{subfigure}
\usepackage{url}
\usepackage[hidelinks]{hyperref}
\usepackage{titlesec}
\usepackage{float}
\usepackage{epstopdf}
\usepackage{extarrows}
\usepackage{mathrsfs}
\usepackage{listings}
\usepackage{color}
\usepackage{xcolor}
\usepackage{multicol}
\usepackage{caption}
\usepackage{cite}
\usepackage{bm}
\usepackage{graphics}
\usepackage{abstract}
\usepackage{xcolor-patch}
\usepackage{datetime2}
\usepackage{advdate}
\usepackage{zhnumber}
\usepackage{titlesec}
\usepackage{type1cm}
\setlength{\absleftindent}{0pt}
\setlength{\absrightindent}{0pt}
% 以下是字体设置，需自行安装mtpro2宏包，也可自行更换字体
\usepackage[T1]{fontenc}
\usepackage{textcomp}
\renewcommand{\rmdefault}{ptm}
\usepackage[scaled=0.92]{helvet}
\usepackage[lite]{mtpro2}
% \setmainfont{Times New Roman}
\bibliographystyle{IEEEtran}

% 定义新日期格式，中文的年和月，使用到了datetime2、zhnumber宏包
\DTMnewdatestyle{mydatestyle}{%
  \renewcommand{\DTMdisplaydate}[4]{%
    \zhdigits{##1}\,年\,\zhnumber{##2}\,月}%
  \renewcommand{\DTMDisplaydate}{\DTMdisplaydate}%
}

% 允许加粗字体，而不是变字体
\let\heiti\relax
\newCJKfontfamily\heiti{SimHei}[AutoFakeBold]
\setCJKsansfont{SimHei}[AutoFakeBold]
\let\songti\relax
\newCJKfontfamily\songti{SimSun}[AutoFakeBold]
\setCJKmainfont{SimSun}[AutoFakeBold]

% 与word中A4默认页边距保持一致
\geometry{top=2.54cm,bottom=2.54cm,left=3.18cm,right=3.18cm}

% 所需信息，可仿照修改和添加
\newcommand\mytitle[1]{\def\@mytitle{#1}}
\newcommand\course[1]{\def\@course{#1}}
\newcommand\college[1]{\def\@college{#1}}
\newcommand\major[1]{\def\@major{#1}}
\newcommand\class[1]{\def\@class{#1}}
\newcommand\stuid[1]{\def\@stuid{#1}}
\newcommand\name[1]{\def\@name{#1}}
\newcommand\score[1]{\def\@score{#1}}
\renewcommand\date[1]{\def\@date{#1}}

% myLarge对应16pt，三号字体
\newcommand{\myLarge}{\fontsize{16pt}{24pt}\selectfont}
% myHuge对应24pt，一号字体
\newcommand{\myHuge}{\fontsize{26pt}{36pt}\selectfont}

% 页眉页脚，设置为空
\pagestyle{plain}

% 一个单元格内的内容自动换行，用于表格
\newcommand{\tabincell}[2]{\begin{tabular}{@{}#1@{}}#2\end{tabular}}

% 代码lst的rgb设置，设置为Consolas字体
\definecolor{mygreen}{rgb}{0,0.6,0}
\setmonofont{Consolas}
\lstset{
  numbers=left,
  breaklines=true,
  frame=false,
  numbersep=7pt,
  showspaces=false,
  columns=fullflexible,
  numbers=none,
  keywordstyle=\color{blue},                % 关键字蓝色
  commentstyle=\color{mygreen},             % 注释绿色
  rulesepcolor=\color{red!0!green!0!blue!0},
  basicstyle=\ttfamily,                     % 整体字体是ttfamily
  xleftmargin=1em,
  xrightmargin=1em,
  aboveskip=1em
}

% 封面设置，可仿照修改
\newcommand{\makecover}{
  \thispagestyle{empty}
  \begin{center}
    \begin{center}
      \includegraphics[width=14.44cm]{figure/title.pdf}
    \end{center}
    \vspace{1cm}
    {\myHuge \bfseries 课　程　设　计}
    \vspace{0.5cm}
    \begin{center}
      \includegraphics[width=4cm]{figure/logo.pdf}
    \end{center}
    \vspace{0.5cm}
    \begin{center}
      % 设置列高
      \renewcommand\arraystretch{1.6}
      % \cline{2-2}为画横线，如果需要横线就取消注释
      \begin{tabular}{cc}
        {\myLarge 题目：} & {\myLarge \@mytitle}   \\ % \cline{2-2}
      \end{tabular}
    \end{center}
    \vspace{0.3cm}
    \begin{center}
      \renewcommand\arraystretch{1.6}
      \begin{tabular}{cl}
        {\myLarge 课程名称：} & {\myLarge \@course}   \\ % \cline{2-2}
        {\myLarge 学　　院：} & {\myLarge \@college}  \\ % \cline{2-2}
        {\myLarge 专　　业：} & {\myLarge \@major}  \\ % \cline{2-2}
        {\myLarge 班　　级：} & {\myLarge \@class}  \\ % \cline{2-2}
        {\myLarge 学　　号：} & {\myLarge \@stuid} \\ % \cline{2-2}
        {\myLarge 学生姓名：} & {\myLarge \@name}  \\ % \cline{2-2}
        {\myLarge 成　　绩：} & {\myLarge \@score}  \\ % \cline{2-2}
      \end{tabular}
    \end{center}
    \vfill
    \myLarge{\@date}
  \end{center}
  \clearpage
}
