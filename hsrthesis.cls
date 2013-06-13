\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{hsrthesis}[2012/06/06 A LaTex template for HSR Thesis]
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{report}}
\ProcessOptions

\LoadClass[a4paper]{report}
\RequirePackage{ifthen}
\RequirePackage{graphicx}
\newcommand{\nothing}{}

% Including commonly used packages
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\usepackage[utf8]{inputenc}
\usepackage[T1]{fontenc}
\usepackage{textcomp}
\usepackage{mathptmx}
\usepackage[scaled=0.85]{helvet}
\usepackage{hyperref}
\usepackage{array}
\usepackage{ngerman}
\usepackage{datatool}
\usepackage{glossaries}
\usepackage{color}
\usepackage{listings} \lstset{backgroundcolor=\color{lightgrey}} \lstset{language=Java}
\usepackage{url}
\usepackage{float}
\usepackage{wrapfig}
\usepackage{natbib}
\definecolor{lightgrey}{rgb}{.9,.9,.9}
%\usepackage{bera}% optional: just to have a nice mono-spaced font
\usepackage{xcolor}
\usepackage[stable]{footmisc}
\usepackage{booktabs, multicol, multirow}
\usepackage{makecell}
\usepackage{inconsolata}
\usepackage{enumitem}
\usepackage{caption}
\usepackage{algpseudocode}
\usepackage[Algorithmus]{algorithm} 
\usepackage{titlesec}
\usepackage{ragged2e,array,longtable}
  
 
\captionsetup[table]{skip=8pt}

\DeclareCaptionFormat{algor}{%
  \par\offinterlineskip\vskip2pt%
    \textbf{#1#2}#3\offinterlineskip\vskip1pt}
\DeclareCaptionStyle{algori}{singlelinecheck=off,format=algor,labelsep=space}

\captionsetup[algorithm]{style=algori}

\setlist{itemsep=2pt,parsep=2pt,topsep=0pt}


\titleformat{\paragraph}
{\normalfont\normalsize\bfseries}{\theparagraph}{1em}{}
\titleformat{\subparagraph}
{\normalfont\normalsize\bfseries}{\thesubparagraph}{1em}{}


\titlespacing*{\paragraph} {0pt}{1.75ex plus 1ex minus .2ex}{0em}
\titlespacing*{\subparagraph} {\parindent}{1.25ex plus 1ex minus .2ex}{-.5em}

\colorlet{punct}{red!60!black}
\definecolor{background}{HTML}{EEEEEE}
\definecolor{delim}{RGB}{20,105,176}
\colorlet{numb}{magenta!60!black}
\colorlet{punct}{red!60!black}
\definecolor{background}{HTML}{EEEEEE}
\definecolor{delim}{RGB}{20,105,176}
\colorlet{numb}{magenta!60!black}
\definecolor{mygray}{rgb}{0.5,0.5,0.5}
\definecolor{mymauve}{rgb}{0.58,0,0.82}

\lstdefinelanguage{json}{
    basicstyle=\fontsize{7}{9}\ttfamily,
    numbers=none,
    showstringspaces=false,
    breaklines=true,
    backgroundcolor=\color{background},
    morekeywords={device,username,deviceId, phoneNr, deviceManagementContainerId, configChangedTime, messageAvailable, generalSettings, transferInterval, operationMode, backlight, criticalBatteryValue, deviceManagementServer, recordingMode, tourLiveServerPrim, tourLiveServerSec, imageSettings, automaticCameraAdjustment, camera, cameraMode, imageResolution, imageInterval, videoResolution, stageSettings, raceDistanceCorrection, stageSettingsId, satellites, powerSupplyMode, lastConfigSent, lastImageSent, lastPositionSent, timestamp, freeSpaceMemoryCard, freeSpaceIntern, batteryStatus, logSize, upstream, entries, message, identifier, level, date, messageId, textMessage, readAt, netData, technology, mncmcc, locationArea, signalStrength, cellNumber, positionData, direction, speed, altitude, latitude, longitude, accuracy, stageData, stageTime, distance, stageUpAltitude, averageSpeed, incline, lastMediaSent, tourLiveDataSize, recordingRunning, additionalSettings, recordingSettings, cameraType, streamingMode, recordingEndTime, recordingStartTime, dataTransferInterval, imageTransferInterval, deviceSettings, appAutoStart, startRecording, completedStagesDistance, currentStageEndtime, stageName, currentStageStarttime, raceName, currentRaceTotalDistance, currentStageTotalDistance, situation, riderNumber, isLeader, groupnr, handicaptime, isField, riderId, startNr, name, team, teamShort, country, note, neo, timeOff, timeRueck, timeVirt, marchTableItemId, icon, distanceToGo, settlement, advertisingColumn, raceSlow, raceMedium, raceFast, stageId, stageSlug, stageDescription, starttime, endtime, offsettime, bannerImage, stageProfileImage, imageDataId, imageLocation, realTimestamp, videoDataId, videoLocation},
  keywordstyle=\color{blue!90!black},
  commentstyle=\itshape\color{purple!40!black},
  identifierstyle=\color{punct},
  numberstyle=\color{punct},
  stringstyle=\color{punct},
  literate=
     *{0}{{{\color{punct}0}}}{1}
      {1}{{{\color{punct}1}}}{1}
      {2}{{{\color{punct}2}}}{1}
      {3}{{{\color{punct}3}}}{1}
      {4}{{{\color{punct}4}}}{1}
      {5}{{{\color{punct}5}}}{1}
      {6}{{{\color{punct}6}}}{1}
      {7}{{{\color{punct}7}}}{1}
      {8}{{{\color{punct}8}}}{1}
      {9}{{{\color{punct}9}}}{1},
}

\colorlet{listingbackground}{gray!10.0}
\colorlet{stringcolor}{green!40!black!100}
\colorlet{commentcolor}{green!40!black!100}

% Code Listings
%%%%%%%%%%%%%%%%
\lstset{
	basicstyle=\small\ttfamily, % Standardschrift
	numbers=left,               % Ort der Zeilennummern
	numberstyle=\tiny,          % Stil der Zeilennummern
	numbersep=5pt,              % Abstand der Nummern zum Text
	tabsize=2,                  % Groesse von Tabs
	extendedchars=true,         %
	breaklines=true,            % Zeilen werden Umgebrochen
	backgroundcolor=\color{listingbackground},
	stringstyle=\color{stringcolor}, % Farbe der String
	commentstyle=\color{commentcolor}, % Farbe der String
	showspaces=false,           % Leerzeichen anzeigen ?
	showtabs=false,             % Tabs anzeigen ?
	showstringspaces=false,      % Leerzeichen in Strings anzeigen ?
	language=Java,
	captionpos=b,
	abovecaptionskip=5mm,
	frame=tb,
	framerule=0pt,
	framesep=0pt,
	framexleftmargin=5pt,
	framexrightmargin=5pt,
	framextopmargin=5pt,
	framexbottommargin=5pt
}

\renewcommand{\lstlistlistingname}{Quellcodes}
\renewcommand{\lstlistingname}{Quellcode}

\lstdefinelanguage{JavaScript}{
	keywords={typeof, new, true, false, catch, function, return, null, catch, switch, var, if, in, while, do, else, case, break},
	keywordstyle=\color{blue}\bfseries,
	ndkeywords={class, export, boolean, throw, implements, import, this},
	ndkeywordstyle=\color{darkgray}\bfseries,
	identifierstyle=\color{black},
	sensitive=false,
	comment=[l]{//},
	morecomment=[s]{/*}{*/},
	commentstyle=\color{purple}\ttfamily,
	stringstyle=\color{red}\ttfamily,
	morestring=[b]',
	morestring=[b]"
}

\lstset{
	language=JavaScript,
	backgroundcolor=\color{lightgray},
	extendedchars=true,
	basicstyle=\footnotesize\ttfamily,
	showstringspaces=false,
	showspaces=false,
	numbers=left,
	numberstyle=\footnotesize,
	numbersep=9pt,
	tabsize=2,
	breaklines=true,
	showtabs=false,
	captionpos=b
}


% Titlepage
%%%%%%%%%%%

\if@titlepage
	\renewcommand{\maketitle}{
	   \setlength\hoffset{-0.2in}
		\begin{titlepage}
		% Logos
		\begin{picture}(0,200)(0,-100)
      		\put(-60, 0){\includegraphics[height=30mm]{images/hsrlogo.png}}
      		\put(210, 15){\includegraphics[height=20mm]{images/partnerlogo.png}}
		\end{picture}

		% title
		\begin{center}
			\Large\thesistype , \departement\\[2ex]
			\huge\thesistitle\\[2ex]
			\large\school\\[1ex]
			\normalsize\term\\
			\normalsize\thedate
			\vfill
		\end{center}

		\begin{minipage}{\textwidth}
			\begin{flushleft}
				\large
				\begin{tabular}[t]{ll}
				% Checking Autor(s)
				\ifthenelse{\equal{\thesisauthora}{}}{\message{blub}}{\ifthenelse{\equal{\thesisauthorb}{}}{\emph{Autor:} & \thesisauthora\\[3pt]}{\ifthenelse{\equal{\thesisauthorc}{}}{\emph{Autoren:} & \thesisauthora \ \& \thesisauthorb\\[3pt]}{\emph{Autoren:} & \thesisauthora, \thesisauthorb \ und \thesisauthorc\\[3pt]}}}
				% Checking professor
				\ifthenelse{\equal{\professor}{}}{\\}{\emph{Betreuer:} & \professor\\[3pt]}
					\emph{Projektpartner:} & \partner\\[3pt]
					\emph{Experte:} & \expert\\[3pt]
					\emph{Gegenleser:} & \coreader\\[3pt]
					\emph{Arbeitsperiode:} & \timeperiode\\[3pt]
					\emph{Arbeitsumfang:} & \workload\\[3pt]
					\emph{Link:} & \url{\linktothesis}
				\end{tabular}
			\end{flushleft}
		\end{minipage}
\end{titlepage}%
}
   \else
   \renewcommand{\maketitle}{%
     \begin{flushleft}
       \null\hfill
       \vskip 1cm
       \sffamily\bfseries\upshape\huge
       \@title\\
       \mdseries\upshape\large
       \vspace{.5em}%
       \@author, \@date\\
	% \rule{\textwidth}{.5mm}\\
     \end{flushleft}
     \@thanks
     \par
     \vskip 1cm
     }
   \fi
   
  %make new chapter thing
   \renewcommand{\thechapter}{\arabic{chapter}}
   
   \renewcommand{\chapter}{%
     \if@openright\cleardoublepage\else\clearpage\fi
     \secdef\@chapter\@schapter%
     }

   \renewcommand{\@chapter}[2][?]{%
     \clearpage%
     \refstepcounter{chapter}%
     {%
       \parskip1ex%
       \parindent \z@ \raggedright \normalfont%
       \ifnum \c@secnumdepth >\m@ne%
       \par%
       \hspace{-\mp@margwd}\rule{\mp@fullwd}{.25mm}%
       \vspace{-\baselineskip}\\[2mm]%
       \hspace{-\mp@margwd}\rule{\mp@margwd}{2mm}%
       \par\hspace{-\mp@margwd}%
       % typeset the chapter number
       \makebox[\mp@margwd][r]{%
         \fontsize{5\EX}{3\EX}\bfseries\thechapter
         }%
       \hfill%
       \fi
       % set variables for the formatting of the chapter title
       \settoheight{\mp@chapnoht}{%
         \fontsize{6\EX}{6\EX}\bfseries\thechapter}%
       \settoheight{\mp@chaptlht}{\parbox[b]{.9\textwidth}{%
           \raggedleft\bfseries\Huge #1}}
       % set the chapter title                                %
       \raisebox{-\mp@chaptlht}{\raisebox{\mp@chapnoht}{%
           \parbox[b]{.9\textwidth}{\raggedleft\bfseries\Huge
             #1}}}%
       \chaptermark{#1}%
       \addcontentsline{toc}{chapter}{\protect\numberline{\thechapter} #1}%
       \par\nobreak%
       \vskip\mp@margwd%
       }}

   \renewcommand{\@schapter}[1]{%        % for chapter*{...}
     {%
       \newpage%
       \parskip1ex%
       \par%
       \hspace{-\mp@margwd}\rule{\mp@fullwd}{.15mm}%
       \vspace{-\baselineskip}\par%
       \hspace{-\mp@margwd}\rule{\mp@margwd}{2mm}%
       \par\hspace{-\mp@margwd}%
       % don't typeset the chapter number
       \hfill%
       % set variables for the formatting of the chapter title
       \settoheight{\mp@chapnoht}{%
         \fontsize{6\EX}{6\EX}\bfseries\thechapter}%
       \settoheight{\mp@chaptlht}{\parbox[b]{.9\textwidth}{%
           \raggedleft\bfseries\huge #1}}
       % set the chapter title                                %
       \raisebox{-\mp@chaptlht}{\raisebox{\mp@chapnoht}{%
           \parbox[b]{.9\textwidth}{\raggedleft\bfseries\Huge #1}}}%
       \par\nobreak%
       \vskip\mp@margwd%
       }%
     }
     
     %% It redefines |\section|.
   \renewcommand{\section}{\secdef\@section\@ssection}

   \newlength{\mp@headht}
   \newcommand{\@section}[2][?]%
   {%
     \refstepcounter{section}%
     \vspace{\baselineskip}%
     \pagebreak[3]%
     {%
       \parskip1.5ex%
       \hspace{-\mp@margwd}\rule{\mp@fullwd}{.25mm}%
       \par\vspace*{-.5\baselineskip}%
       \hspace{-\mp@margwd}%
       \bfseries\large\thesection~#2
     }%
     \sectionmark{#1}%
     \addcontentsline{toc}{section}{\protect\numberline{\thesection} #1}%
     \par
   }

   \newcommand{\@ssection}[1]%        % for section*{...}
   {%
     \vspace{\baselineskip}%
     \pagebreak[3]%
     {%
       \parskip1.5ex%
       \hspace{-\mp@margwd}\rule{\mp@fullwd}{.25mm}%
       \par\vspace*{-.5\baselineskip}%
       \hspace{-\mp@margwd}%
       \bfseries\large#1
     }%
     \par
   }

%% It redefines |\subsection|.
   \renewcommand{\subsection}{%
     \@startsection
     {subsection}{2}{0pt}{-1.5ex plus -1ex minus -.2ex}%
     {1ex plus .2ex}{\bfseries\normalsize}%
     }

%% It redefines |\subsubsection|.
   \renewcommand{\subsubsection}{%
     \@startsection
     {subsubsection}{3}{0pt}{-1.5ex plus -1ex minus -.2ex}%
     {1ex plus .2ex}{\bfseries\normalsize}%
     }

%% Put caption in the margin, next to the figure/table (place caption first in
%% figure/table environment)
   \newlength{\mp@capht}
   \newcommand{\mp@makefigcap}[2]{%
     \settoheight{\mp@capht}%
     {\parbox[b]{.9\mp@margwd}{\raggedleft\slshape\small#1: #2}}%
     \hspace{-\mp@margwd}%
     \vspace{-\mp@capht}%
     \parbox[t]{.9\mp@margwd}{\raggedleft\slshape\small#1: #2}
     }

   \renewcommand{\table}{%
     \let\@makecaption\mp@makefigcap\@float{table}%
     }

%% Page style
%% For \pagestyle{plain}
   \renewcommand{\ps@plain}{%
     \renewcommand{\@oddhead}{}%
     \renewcommand{\@evenhead}{}%
     \renewcommand{\@oddfoot}{\hfil\textsf{\thepage}}%
     \renewcommand{\@evenfoot}{\hspace{-\mp@margwd}\textsf{\thepage}\hfil}%
     }

%% Footnote style
   \renewcommand{\@makefntext}[1]%
   {%
     \setlength{\parindent}{0mm}%
     \makebox[1.5em][l]{\normalfont\@thefnmark.\quad}#1%
   }

%% Marginal notes
   \def\@addmarginpar{\@next\@marbox\@currlist{\@cons\@freelist\@marbox
       \@cons\@freelist\@currbox}\@latexbug\@tempcnta\@ne
       \@tempcnta\m@ne % always in the left margin
       \ifnum\@tempcnta <\z@ \global\setbox\@marbox\box\@currbox \fi
       \@tempdima\@mparbottom \advance\@tempdima -\@pageht
          \advance\@tempdima\ht\@marbox \ifdim\@tempdima >\z@
          \@warning{Marginpar on page \thepage\space moved}\else\@tempdima\z@
          \fi
       \global\@mparbottom\@pageht \global\advance\@mparbottom\@tempdima
          \global\advance\@mparbottom\dp\@marbox
          \global\advance\@mparbottom\marginparpush
       \advance\@tempdima -\ht\@marbox
       \global\ht\@marbox\z@ \global\dp\@marbox\z@
       \vskip -\@pagedp \vskip\@tempdima\nointerlineskip
       \hbox to\columnwidth
         {\ifnum \@tempcnta >\z@
             \hskip\columnwidth \hskip\marginparsep
           \else \hskip -\marginparsep \hskip -\marginparwidth \fi
          \box\@marbox \hss}
       \vskip -\@tempdima
       \nointerlineskip
       \hbox{\vrule \@height\z@ \@width\z@ \@depth\@pagedp}}

%% Set the style of the marginpars to match that of captions
   \let\oldmarginpar\marginpar
   \renewcommand\marginpar[2][none]{%
     \-\oldmarginpar{\raggedleft\slshape\small#2}%
   }

%% Dimensions
   \setlength\hoffset{0in}
   \setlength\voffset{-1in}
   \setlength\textwidth{140mm}
   \setlength\textheight{.86\paperheight}
   \setlength{\oddsidemargin}{45mm}
   \setlength{\evensidemargin}{45mm}
   \pagestyle{plain}

   \parindent0mm
   \parskip1ex

   \newlength{\mp@margwd}
   \setlength{\mp@margwd}{15mm}
   \setlength{\marginparwidth}{0.85\mp@margwd}

   \newlength{\mp@fullwd}
   \setlength{\mp@fullwd}{\textwidth}
   \addtolength{\mp@fullwd}{\mp@margwd}
   \newlength{\mp@chapnoht} % height of the chapter number
   \newlength{\mp@chaptlht} % height of the chapter title
   \newlength{\EX}
   \settoheight{\EX}{\normalsize X}
   \setlength{\EX}{2\EX}
\endinput