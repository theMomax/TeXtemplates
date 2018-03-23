\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{compendium}
\LoadClass[a4paper]{book}
\RequirePackage{listings}
\RequirePackage{ucs}
\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc}
\RequirePackage[english,ngerman]{babel}
\RequirePackage{graphicx}
\RequirePackage{xcolor}
\RequirePackage[a4paper]{geometry}
\RequirePackage{caption}
\RequirePackage{url}

% colors
\definecolor{red}{rgb}{1,0.016,0.514}
\definecolor{blue}{rgb}{0.16,0.514,1}

% settings
\pagestyle{plain}

% custom formatting commands
\renewcommand\cite[1]{\iflanguage{ngerman}{(vgl. #1)}{(#1)}}

\renewcommand\quote[2]{\iflanguage{ngerman}{>>#2<< (#1)}{>>#1<< (#2)}}

\newcommand{\hl}[1]{\textbf{\textcolor{blue}{#1}}}
\newcommand{\ct}[1]{\textbf{\textcolor{red}{#1}}}

\newcommand{\mnote}[1]{\textsuperscript{*}\marginpar{\raggedright\fontsize{8pt}{8pt}\selectfont #1}}


% custom environments and commands
\let\olddocbegin\document
\let\olddocend\enddocument
\renewenvironment{document}{\olddocbegin\renewcommand*\rmdefault{qhv}\fontfamily{ppl}\selectfont}{\olddocend}

\let\oldtoc\tableofcontents
\renewcommand{\tableofcontents}[0]{{\newgeometry{top = 2cm, bottom = 2cm, inner = 2.5cm, outer = 2.5cm, marginparwidth = 0cm, marginparsep = 0cm} \oldtoc }}

\let\oldlof\listoffigures
\renewcommand{\listoffigures}[0]{{\newgeometry{top = 2cm, bottom = 2cm, inner = 2.5cm, outer = 2.5cm, marginparwidth = 0cm, marginparsep = 0cm} \oldlof }}

% url
\urlstyle{same}
\expandafter\def\expandafter\UrlBreaks\expandafter{\UrlBreaks%  save the current one
  \do\a\do\b\do\c\do\d\do\e\do\f\do\g\do\h\do\i\do\j%
  \do\k\do\l\do\m\do\n\do\o\do\p\do\q\do\r\do\s\do\t%
  \do\u\do\v\do\w\do\x\do\y\do\z\do\A\do\B\do\C\do\D%
  \do\E\do\F\do\G\do\H\do\I\do\J\do\K\do\L\do\M\do\N%
  \do\O\do\P\do\Q\do\R\do\S\do\T\do\U\do\V\do\W\do\X%
  \do\Y\do\Z}
