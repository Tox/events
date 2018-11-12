\ProvidesClass{mybeamer}
\LoadClass[hyperref={pdfpagelabels=true},compress]{beamer}

\usepackage[utf8]{inputenc}
\usepackage[ngerman]{varioref}
\usepackage[ngerman]{babel}
\usepackage{ngerman}
\usepackage{ifthen}

\usepackage[labelformat=empty]{caption}

\usepackage{listings}
\usepackage{MnSymbol}		% Icons for Listing
\definecolor{mygreen}{rgb}{0,0.6,0}
\definecolor{mygray}{rgb}{0.5,0.5,0.5}
\definecolor{mymauve}{rgb}{0.58,0,0.82}
\usepackage{xcolor}
\definecolor{toxred}{HTML}{FE0000}
\definecolor{toxblue}{HTML}{0033FF}
\definecolor{tox_grey}{RGB}{127,127,127}
\definecolor{tox_lightgrey}{RGB}{220,220,220}
\definecolor{tox_xlightgrey}{RGB}{240,240,240}

\lstset{ %
  backgroundcolor=\color{tox_xlightgrey},   % choose the background color; you must add \usepackage{color} or \usepackage{xcolor}
  basicstyle=\scriptsize,        % the size of the fonts that are used for the code
  breakatwhitespace=true,          % sets if automatic breaks should only happen at whitespace
  breaklines=true,                 % sets automatic line breaking
  captionpos=b,                    % sets the caption-position to bottom
  commentstyle=\color{mygreen},    % comment style
  deletekeywords={...},            % if you want to delete keywords from the given language
  escapeinside={\%*}{*)},          % if you want to add LaTeX within your code
  extendedchars=true,              % lets you use non-ASCII characters; for 8-bits encodings only, does not work with UTF-8  
  keepspaces=true,                 % keeps spaces in text, useful for keeping indentation of code (possibly needs columns=flexible)
  keywordstyle=\color{blue},       % keyword style
  language=Java,                    % the language of the code
  morekeywords={*,...},            % if you want to add more keywords to the set
  numbers=none,                    % where to put the line-numbers; possible values are (none, left, right)
  numbersep=5pt,                   % how far the line-numbers are from the code
  numberstyle=\tiny\color{mygray}, % the style that is used for the line-numbers
  rulecolor=\color{white},         % if not set, the frame-color may be changed on line-breaks within not-black text (e.g. comments (green here))
  showspaces=false,                % show spaces everywhere adding particular underscores; it overrides 'showstringspaces'
  showstringspaces=false,          % underline spaces within strings only
  showtabs=true,                  % show tabs within strings adding particular underscores
  stepnumber=1,                    % the step between two line-numbers. If it's 1, each line will be numbered
  stringstyle=\color{mymauve},     % string literal style
  tabsize=2,                       % sets default tabsize to 2 spaces
  title=\lstname,                   % show the filename of files included with \lstinputlisting; also try caption instead of title
	prebreak=\raisebox{0ex}[0ex][0ex]
        {\ensuremath{\rhookswarrow}},
	%postbreak=\raisebox{0ex}[0ex][0ex]
  %      {\ensuremath{\rcurvearrowse\space}},
	literate=%
{Ö}{{\"O}}1
{Ä}{{\"A}}1
{Ü}{{\"U}}1
{ß}{{\ss}}2
{ü}{{\"u}}1
{ä}{{\"a}}1
{ö}{{\"o}}1
}



\beamersetuncovermixins{\opaqueness<1>{25}}{\opaqueness<1->{15}}
\beamertemplatetransparentcovereddynamicmedium
\setbeamertemplate{caption}[numbered]

\usenavigationsymbolstemplate{}
\usepackage{beamerthemeBerlin}
\usecolortheme{dove}
\useoutertheme{miniframes}

% Bullets
\setbeamercolor{block title}{fg=toxblue,bg=tox_lightgrey}
\setbeamercolor{block body}{fg=black, bg=tox_xlightgrey}
\setbeamercolor{titlelike}{fg=toxblue, bg=white}
\setbeamercolor{mini frame}{fg=toxblue, bg=tox_grey}
\setbeamercolor{section title}{fg=toxblue, bg=tox_grey}

\setbeamercolor{section in head/foot}{fg=toxblue}
%\setbeamercolor{date}{fg=white}
\setbeamercolor*{normal text}{fg=black,bg=white}
\setbeamercolor*{alerted text}{fg=black}
\setbeamercolor*{example text}{fg=black}
\setbeamercolor*{structure}{fg=black}
\setbeamercolor{navigation symbols}{fg=toxred}
\setbeamercolor{navigation symbols}{fg=toxred}

\setbeamertemplate{itemize item}{\color{toxblue}$\blacksquare$}
\setbeamertemplate{itemize subitem}{\color{toxblue}$\blacktriangleright$}

\providecommand\insertframetitle{}
\defbeamertemplate*{headline}{myFooter}{\insertframetitle}


\setbeamertemplate{headline}{
	\begin{picture}(0,0)
	\color{toxblue}{
	% 1px spacing
		\put(0.1,-3.835){\line(1,0){400}}
	
	% Logo
		\put(310, 0){\includegraphics[scale=0.15]{logo_large.png}}
		
	% Sectiontitle
		\put(10,5){\color{tox_lightgrey}{
				\normalsize \textbf{\insertframetitle}
				}
		}
		\put(9.4,5.5){\color{tox_grey}{
				\normalsize \textbf{\insertframetitle}
				}
		}
		
	}
	\end{picture}
		\begin{beamercolorbox}[wd=.850005\paperwidth, ht=9ex, dp=1ex, left]{}
			\hspace{2mm}
				\vspace{1.5mm}	
		\end{beamercolorbox}
		\hfill
}

\newcommand{\setfooterfull}[1]{
	\setbeamertemplate{footline}{
	
		% On Agenda (TOC)-Page no sections
		\ifthenelse{\equal{#1}{true}}{}{
			\setbeamercolor{mini frame}{fg=white, bg=white}
			\setbeamercolor{section in head/foot}{fg=white, bg=white}
		}
	
		\vskip-100pt
		\insertnavigation{0.985\paperwidth}{}{}
		\begin{picture}(0,0)
		\put(-1,9.6){\color{toxblue}{\line(1,0){2000}}}
		\end{picture}
		\leavevmode	
		\hbox{%
			\begin{beamercolorbox}[wd=0.25\paperwidth,ht=4ex,dp=1ex,left]{}
					\color{tox_grey}{
						\usebeamerfont{author in head/foot}\hspace{2mm}\insertdate
						\vspace{0.5mm}
					}
				\end{beamercolorbox}
			
			
				\begin{beamercolorbox}[wd=0.500003\paperwidth,ht=4ex,dp=1ex,center]{}
					\color{tox_grey}{
						\usebeamerfont{author in head/foot}\hspace{2mm} \insertshortauthor: \insertshorttitle \hspace{2mm}
						\vspace{0.5mm}
					}
				\end{beamercolorbox}
			
				\begin{beamercolorbox}[wd=0.25\paperwidth,ht=4ex,dp=1ex,right]{}
					\color{tox_grey}{
						\usebeamerfont{author in head/foot} \insertframenumber/\inserttotalframenumber \hspace{5mm}
						\vspace{0.5mm}
					}
				\end{beamercolorbox}
		}
	}
}

\newcommand{\setfooterempty}{

	\setbeamertemplate{footline}{
		\begin{picture}
			(0,0)
			\put(-1,12.3){\color{toxblue}{\line(1,0){2000}}}
		\end{picture}			
	}
}

\setbeamertemplate{frametitle}{}
\setbeamercovered{transparent}