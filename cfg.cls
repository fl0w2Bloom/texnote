\NeedsTeXFormat{LaTeX2e}[2005/12/01]
\RequirePackage{expl3}
\ProvidesClass{cfg}[公元贰零贰叁年肆月贰拾捌日]


\LoadClass[UTF8,a4paper,linespread=1.3,space=auto,oneside,autoindent]{ctexbook}
\RequirePackage{indentfirst}
\setlength{\parindent}{2em}
\setlength{\parskip}{1em}
\RequirePackage{color}
\RequirePackage{geometry}
\geometry{
    a4paper,
    top=3cm,
    bottom=2.5cm,
    left=3cm,
    right=2.5cm
}
 % 配置中英文字体为阿里巴巴普惠体
\RequirePackage{fontspec}
% 下载字体 https://puhuiti.oss-cn-hangzhou.aliyuncs.com/AlibabaPuHuiTi-2/AlibabaPuHuiTi-2-55-Regular.zip
\setmainfont{AlibabaPuHuiTi-2-55-Regular.otf}
\setmonofont{AlibabaPuHuiTi-2-55-Regular.otf}
\setsansfont{AlibabaPuHuiTi-2-55-Regular.otf}
\RequirePackage{xeCJK}
\setCJKmainfont{AlibabaPuHuiTi-2-55-Regular.otf}
\setCJKmonofont{AlibabaPuHuiTi-2-55-Regular.otf}
\setsansfont{AlibabaPuHuiTi-2-55-Regular.otf}

% 设置默认的页眉页脚样式
\RequirePackage{fancyhdr}
\RequirePackage{lastpage}
\pagestyle{fancy}
\chead{學道必先悟心}
\renewcommand{\headrulewidth}{1pt}  %页眉线宽，设为0可以去页眉线
\cfoot{\thepage\space/\space\pageref{LastPage}}
\renewcommand{\footrulewidth}{1pt}


\newcommand\chapternamebox[1]{
\parbox{\ccwd}{\linespread{1}\selectfont\centering #1}}


\ctexset{
    today = big,
    contentsname = {目\quad 录},
    chapter = {
        beforeskip = 0pt,
        fixskip = true,
        format = \zihao{2}\bfseries,
        nameformat = \rule{\linewidth}{1bp}\par\bigskip\hfill\chapternamebox,
        number = \chinese{chapter},
        aftername = \par\medskip,
        aftertitle = \par\bigskip\nointerlineskip\rule{\linewidth}{2bp}\par,
        titleformat = \raggedright,
    },
    section = {
        format += \bfseries\zihao{3}\raggedright,
        name = {第,节、},
        number = \arabic{section},
        numberformat = \color{blue},
        aftername = {},
    },
    subsection= {
        format +=\bfseries\zihao{4}\raggedright,
        name = {第,小节、},
        number = \arabic{subsection},
        numberformat = \color{red},
        indent = 1\ccwd,
        aftername = {},
    },
    subsubsection = {
        format +=\bfseries\zihao{-4}\raggedright,
        name = {,.},
        number = \arabic{subsubsection},
        indent = 2\ccwd,
        aftername = {}
    },
}


\RequirePackage{hyperref}
\hypersetup{
    hidelinks,
    citecolor = black,,
}

\RequirePackage{tcolorbox}
\tcbuselibrary{skins, breakable, theorems}
\tcbset{enhanced,notitle}
\NewDocumentCommand{\xutbox}{mmo}{
    \begin{tcolorbox}[title=#1]
    %%% 颜色 标题 输入内容 
        #2
        \IfNoValueTF{#3}
        {
            % 若無可選參數，則什麽都不執行
        }{  
            \tcblower
            \textcolor{red}{#3}
        }
    \end{tcolorbox}
}
\newtcbox{\xuemph}[1][red]{on line, arc = 0pt, outer arc = 0pt,
	colback = #1!10!white, colframe = #1!50!black,
	boxsep = 0pt, left = 1pt, right = 1pt, top = 2pt, bottom = 2pt,
	boxrule = 0pt, bottomrule = 2pt, toprule = 1pt}

\newtcolorbox{mybox}[2][]{colbacktitle=red!10!white, colback=blue!10!white,coltitle=red!70!black, title={#2},fonttitle=\bfseries,#1}
\NewDocumentCommand{\xuref}{mm}{
	\begin{mybox}[detach title,after upper={\par\hfill\tcbtitle}]{#1}
		#2
	\end{mybox}
}


\NewDocumentCommand{\xunote}{m}{
	\begin{tcolorbox}[fuzzy shadow={-0.6mm}{0.6mm}{0mm}{0.3mm}{white!90!gray},fuzzy shadow={0.6mm}{-0.6mm}{0mm}{0.3mm}{fill=black!90!gray}]
        \textcolor{black}{#1}
    \end{tcolorbox}
}
% 縮進倆個漢字
\NewDocumentCommand{\xutab}{}{
	\par\raggedright\hspace{1.75em}
}