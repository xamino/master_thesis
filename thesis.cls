\NeedsTeXFormat{LaTeX2e}[1994/06/01]
\ProvidesClass{thesis}[2012/04/25 DBIS Thesis Package]

% \documentclass[
% 	a4paper,
% 	10pt,
% 	%bibtotoc,
% 	bibliography=totoc,
% 	%liststotoc,
% 	listof=totoc,
% 	twoside,
% 	openright,
% 	%pointlessnumbers,
% 	numbers=noenddot,
% 	%normalheadings,
% 	headings=normal,
% 	chapterprefix,	% Kapitel mit zusätzlichem Titel "Kapitel" darstellen
% 	headsepline,	% Linie nach Kopfzeile
% 	DIV=9
% 	%,draft
% ]{scrbook}
% \KOMAoptions{DIV=last}

% \DeclareOption{a4paper}{\PassOptionsToClass{\CurrentOption}{scrbook}}
% \DeclareOption{10pt}{\PassOptionsToClass{\CurrentOption}{scrbook}}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{scrbook}}
\ExecuteOptions{a4paper,
	10pt,
	%bibtotoc,
	bibliography=totoc,
	%liststotoc,
	listof=totoc,
	twoside,
	openright,
	%pointlessnumbers,
	numbers=noenddot,
	%normalheadings,
	headings=normal,
	chapterprefix,	% Kapitel mit zusätzlichem Titel "Kapitel" darstellen
	headsepline,	% Linie nach Kopfzeile
	DIV=9}
\ProcessOptions\relax
\LoadClass{scrbook}

\pagestyle{headings}
%\RequirePackage[ngerman]{babel}
\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc}
\RequirePackage{lmodern}					% AL: Bessere Schrift trotz T1
\RequirePackage{microtype}						% AL: Verbessert den Schriftsatz
\renewcommand{\sfdefault}{phv}
\renewcommand{\rmdefault}{phv}
\renewcommand{\ttdefault}{pcr}
\RequirePackage{graphicx}
\graphicspath{{img/}}
\RequirePackage{verbatim}
\RequirePackage{tabulary}
\RequirePackage[hyphens]{url}
\RequirePackage{color}
\RequirePackage{amssymb}
\RequirePackage{setspace}
\RequirePackage{listings}
\RequirePackage{amsmath}					%js
\RequirePackage{booktabs}					%js
\RequirePackage{multirow}					%js
\RequirePackage[left]{eurosym}				%js
\RequirePackage{amsthm}						%js
\RequirePackage{ragged2e}					%js

\RequirePackage{float}						%js
\RequirePackage[section]{placeins}			%js
\RequirePackage{epigraph}					%js
\setlength{\epigraphwidth}{0.4\textwidth}

\RequirePackage{longtable}					%js
\RequirePackage[grey,helvetica]{quotchap}	%js
\RequirePackage[printonlyused]{acronym}		%js

\lstset{language=Java,
		  showstringspaces=false,
		  frame=single,
		  numbers=left,
		  basicstyle=\ttfamily,
		  numberstyle=\tiny
  		}

%js definition-umgebung setzen!
\newtheorem{definition}{Definition}
% js end definition

% hier namen etc. einsetzen
\newcommand{\@fullname}{\null}
\newcommand{\@email}{\null}
\newcommand{\@headline}{\null}
\newcommand{\@titel}{\null}
\newcommand{\@jahr}{\null}
\newcommand{\@matnr}{\null}
\newcommand{\@gutachterA}{\null}
\newif\if@gutachterBSet
\@gutachterBSetfalse
\newcommand{\@gutachterB}{\null}
\newif\if@betreuerSet
\@betreuerSetfalse
\newcommand{\@betreuer}{\null}
\newcommand{\@typ}{\null}
\newcommand{\@fakultaet}{\null}
\newcommand{\@institut}{\null}
\newif\if@licenseSet
\@licenseSetfalse
\newcommand{\@license}{\null}

\newcommand{\fullname}[1]{\renewcommand{\@fullname}{#1}}
\newcommand{\email}[1]{\renewcommand{\@email}{#1}}
\newcommand{\headline}[1]{\renewcommand{\@headline}{#1}}
\newcommand{\titel}[1]{\renewcommand{\@titel}{#1}}
\newcommand{\jahr}[1]{\renewcommand{\@jahr}{#1}}
\newcommand{\matnr}[1]{\renewcommand{\@matnr}{#1}}
\newcommand{\gutachterA}[1]{\renewcommand{\@gutachterA}{#1}}
\newcommand{\gutachterB}[1]{\renewcommand{\@gutachterB}{#1}\@gutachterBSettrue}
\newcommand{\betreuer}[1]{\renewcommand{\@betreuer}{#1}\@betreuerSettrue}
\newcommand{\typ}[1]{\renewcommand{\@typ}{#1}}
\newcommand{\fakultaet}[1]{\renewcommand{\@fakultaet}{#1}}
\newcommand{\institut}[1]{\renewcommand{\@institut}{#1}}
\newcommand{\license}[1]{\renewcommand{\@license}{#1}\@licenseSettrue}

\newcommand{\thefullname}[0]{\@fullname}
\newcommand{\theemail}{\@email}
\newcommand{\theheadline}{\@headline}
\newcommand{\thetitel}{\@titel}
\newcommand{\thejahr}{\@jahr}
\newcommand{\thematnr}{\@matnr}
\newcommand{\thegutachterA}{\@gutachterA}
\newcommand{\thegutachterB}{\@gutachterB}
\newcommand{\thebetreuer}{\@betreuer}
\newcommand{\thetyp}{\@typ}
\newcommand{\thefakultaet}{\@fakultaet}
\newcommand{\theinstitut}{\@institut}
\newcommand{\thelicense}{\@license}

% farbe in tabellen
\RequirePackage{colortbl}
\definecolor{Gray}{rgb}{0.80784, 0.86667, 0.90196} 	%dunkelblau
\definecolor{Lightgray}{rgb}{0.9176, 0.95, 0.95686} %hellblau
\definecolor{Akzent}{rgb}{0.6627, 0.63529, 0.55294} %akzentfarbe
\setlength{\arrayrulewidth}{0.1pt}

\clubpenalty = 10000
\widowpenalty = 10000

\setlength{\parindent}{0pt}
\setlength{\parskip}{1.4ex plus 0.35ex minus 0.3ex}

\setcounter{tocdepth}{2}	% tiefe des inhaltsverzeichnisses
\setcounter{secnumdepth}{2} % Nummerierung der Überschriftentiefe festlegen

% \pdfinfo{
%   /Author	(\@fullname)
%   /Title 	(\pdfescapestring{\@titel})
%   /Producer (pdfeTex 3.14159-1.30.6-2.2)
%   /Keywords (TAGS DEFINIEREN)
%   }

\RequirePackage{hyperref}
\hypersetup{%
% 	pdftitle=\pdfescapestring{\@titel},
% 	pdfauthor={\@fullname},
% 	pdfsubject={\@typ},
% 	pdfproducer={pdfeTex 3.14159-1.30.6-2.2},
	colorlinks=false,
	pdfborder=0 0 0	% keine box um die Links!
}

\renewcommand{\maketitle}[0]
{
% titelseite
\thispagestyle{empty}
\begin{addmargin*}[4mm]{-32mm}

\includegraphics[height=1.8cm]{img/unilogo_bild}
\hfill
\includegraphics[height=1.8cm]{img/unilogo_wort}\\[1em]

{\footnotesize
{\bfseries Ulm University}\textbar ~89069 Ulm \textbar ~Germany
\hfill\parbox[t]{35mm}{\bfseries \raggedleft Faculty of \@fakultaet\\ \mdseries \@institut}
\hspace*{140mm}\\[2cm]

\parbox{140mm}{\bfseries \huge \@headline}\\[0.5em]
{\footnotesize \@typ at Ulm University}\\[3em]

{\footnotesize \bfseries Author:}\\
{\footnotesize \@fullname\\\@email}\\[2em]
{\footnotesize \bfseries Reviewers:}\\
{\footnotesize\@gutachterA
\if@gutachterBSet\\%
\@gutachterB\fi%
}\\[2em]
\if@betreuerSet%
{\footnotesize \bfseries Supervisor:}\\
{\footnotesize\@betreuer}\\\fi%
\\
{\footnotesize \bfseries Year:}\\
{\footnotesize\@jahr}
}
\end{addmargin*}
}

\newcommand{\impressum}[0]
{
\thispagestyle{empty}
{ \small
  \flushleft
  Version \today \\\vfill
  \text{ } \\\vfill
  \copyright~\@jahr~\@fullname\\[0.5em]

\if@licenseSet
\@license
\fi
}
}

\newcommand{\erklaerung}[0]
{
\thispagestyle{empty}

Name: \thefullname \hfill Matrikelnummer: \thematnr \vspace{2cm}

\minisec{Erklärung}

Ich erkläre, dass ich die Arbeit selbstständig verfasst und keine anderen als
die angegebenen Quellen und Hilfsmittel verwendet habe.\vspace{2cm}

Ulm, den \dotfill

\hspace{10cm} {\footnotesize \thefullname}
}
