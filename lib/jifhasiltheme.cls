%
% Template Laporan Tugas Akhir
%
% @author Abdul
% Template ini telah disesuaikan dengan aturan penulisan tugas akhir yang terdapat pada dokumen Panduan Tugas Akhir FMIPA Unsyiah tahun 2010.
%

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{jifhasiltheme}

\RequirePackage[english,bahasa]{babel}
\RequirePackage{indentfirst}
\RequirePackage{setspace}
\RequirePackage[T1]{fontenc}
\RequirePackage{times}
\RequirePackage{graphicx,latexsym}

\setlength{\paperwidth}{210mm}
\setlength{\paperheight}{297mm}
%\usepackage[a4paper,left=4cm,right=3cm,top=3cm,bottom=3cm]{geometry}
\usepackage[a4paper,left=3.5cm,right=3cm,top=3cm,bottom=3cm]{geometry}
\usepackage{verbatim,enumerate}
%tabularx untuk membuat tabel yang ukurannya bisa disesuaikan dengan lebar halaman
\usepackage{tabularx}

% Membantu penulisan notasi matematika terutama untuk dokumen dengan banyak rumus. it's me!
\usepackage{amsmath}

\usepackage{booktabs}
\usepackage[table]{xcolor}
\usepackage{multirow}
\usepackage{float}
\usepackage{indentfirst}

% Agar bisa menggunakan compactitem
\usepackage{paralist} %it's me!

% Agar bisa menulis code snippet
%\usepackage{listings} %it's me!

\newif\if@msthesis
\newif\if@msproposal
\DeclareOption{skripsi}{\@msthesistrue\@msproposalfalse}
\DeclareOption{proposal}{\@msthesisfalse\@msproposaltrue}

\newif\if@singlesp
\newif\if@doublesp
\DeclareOption{satuspasi}{\@singlesptrue\@doublespfalse}
\DeclareOption{duaspasi}{\@singlespfalse\@doublesptrue}
\newif\if@onehalfsp
\@onehalfspfalse
\DeclareOption{satusetengahspasi}{\@onehalfsptrue}

\newif\if@langindo
\newif\if@langeng
\DeclareOption{indonesia}{\@langindotrue\@langengfalse}
\DeclareOption{inggris}{\@langindofalse\@langengtrue}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{report}}
\ExecuteOptions{jifhasil,satusetengahspasi,indonesia}
\ProcessOptions
\LoadClass[a4paper,12pt]{report}
\RequirePackage{natbib}
\bibliographystyle{style/jifbibstyle}
%\bibliographystyle{apalike}
%\RequirePackage{glossaries}%
%\renewcommand{\nomname}{\nomenclaturename}%
%\makeglossary%
%\makenomenclature

%------------------------------------------------------------
%Layout
%------------------------------------------------------------
\setlength{\topmargin}{-0.9cm}
\setlength{\headheight}{12pt}
\setlength{\headsep}{2.3cm}
\setlength{\topskip}{1ex}
\setlength{\oddsidemargin}{1.46cm}
\setlength{\evensidemargin}{1.46cm}
\setlength{\textwidth}{14.3cm}
\setlength{\textheight}{22cm}
\setlength{\footskip}{1.5cm}
\setlength{\marginparsep}{0pt}
\setlength{\marginparwidth}{0pt}

\setlength{\parindent}{3em} %Indent approx 6 character

%------------------------------------------------------------
%The form of page numbering
%------------------------------------------------------------
%\pagestyle{myheadings}
%\markright{}

%------------------------------------------------------------
%Define page numbering in the first chapter
%------------------------------------------------------------
\def\ps@chapterheading{%

  }

% it's me!
\usepackage{fancyhdr}

\setlength{\footskip}{20pt}
\setlength{\headsep}{20pt}
\renewcommand{\headrulewidth}{0.0pt}
	\fancyhf{}
	\fancyhead[L]{}
	\fancyhead[C]{}
	\fancyhead[R]{\thepage}
	\renewcommand{\headrulewidth}{0.0pt}
	\renewcommand{\footrulewidth}{0.0pt}
\pagestyle{fancy}

%------------------------------------------------------------
%Redefine chapter and sections
%------------------------------------------------------------
\setcounter{secnumdepth}{2}
\renewcommand \thepart {\@Roman\c@part}
\renewcommand \thechapter {\@Roman\c@chapter}
%\renewcommand \thesection {\@arabic\c@section.}
\renewcommand \thesection {\@arabic\c@chapter.\@arabic\c@section}
%\renewcommand\thesubsection {\@alph\c@subsection.}
\renewcommand\thesubsection {\@arabic\c@chapter.\@arabic\c@section.\@arabic\c@subsection}
%\renewcommand\thesubsubsection{\@roman\c@subsubsection.}
%\renewcommand\thesubsubsection{}
\renewcommand\appendix{\par
  \setcounter{chapter}{0}%
  \setcounter{section}{0}%
  \gdef\@chapapp{\appendixname}%
  \gdef\thechapter{\@Alph\c@chapter}}
\renewcommand{\chapter}{\clearpage\thispagestyle{chapterheading}%
  \global\@topnum\z@ %Prevents figures from going at top of page
  \@afterindenttrue %Indent the 1st paragraph
  \secdef\@chapter\@schapter}
\renewcommand{\@makechapterhead}[1]{%
  {\parindent \z@ \centering \normalfont
    \ifnum \c@secnumdepth >\m@ne
        \large\bfseries \@chapapp\space \thechapter
        \par\nobreak
        \vskip -0.2cm
    \fi
    \interlinepenalty\@M
    \large \bfseries #1\par\nobreak
    \vskip 20\p@
    }}
\renewcommand{\@makeschapterhead}[1]{%
  {\parindent \z@ \centering \normalfont
    \interlinepenalty\@M \large \bfseries #1\par\nobreak \vskip 20\p@ }}
%\renewcommand{\section}{\@startsection {section}{1}{\z@}%
%                                   {-3.5ex \@plus -1ex \@minus -.2ex}%
%                                   {2.3ex \@plus.2ex}%
%                                   {\normalfont\normalsize\bfseries\centering}}
\renewcommand{\section}{\@startsection {section}{1}{\z@}%
                                   {-3.5ex \@plus -1ex \@minus -.2ex}%
                                   {0.5ex \@plus.2ex}%
                                   {\normalfont\normalsize\bfseries}}
\renewcommand{\subsection}{\@startsection{subsection}{2}{\z@}%
                                     {-3.25ex\@plus -1ex \@minus -.2ex}%
                                     {0.5ex \@plus .2ex}%
                                     {\normalfont\normalsize\bfseries}}
%\renewcommand{\subsubsection}{\@startsection{subsubsection}{3}{\parindent}%
%                                    {3.25ex \@plus1ex \@minus.2ex}%
%                                    {-1em}%
%                                    {\normalfont\normalsize\bfseries}}
\renewcommand{\subsubsection}{\@startsection{subsubsection}{3}{\z@}%
                                    {3.25ex \@plus1ex \@minus.2ex}%
                                    {-1em}%
                                    {\normalfont\normalsize\bfseries}}
\renewcommand{\paragraph}{\subparagraph}

\@addtoreset {equation}{chapter}
\renewcommand\theequation
  {\ifnum \c@chapter>\z@ \@arabic\c@chapter.\fi \@arabic\c@equation}
\renewcommand \thefigure
     {\ifnum \c@chapter>\z@ \@arabic\c@chapter.\fi \@arabic\c@figure}
\renewcommand \thetable
     {\ifnum \c@chapter>\z@ \@arabic\c@chapter.\fi \@arabic\c@table}

%------------------------------------------------------------
% Redefine caption names
%------------------------------------------------------------
\def\captionsbahasa{%
\def\prefacename{KATA PENGANTAR}%
\def\contentsname{DAFTAR ISI}%
\def\listfigurename{DAFTAR GAMBAR}%
\def\listtablename{DAFTAR TABEL}%
\def\listappendixname{DAFTAR LAMPIRAN}%
\def\nomenclaturename{DAFTAR SINGKATAN}%
\def\abstractname{ABSTRAK}%
\def\acknowledgmentname{HALAMAN PERSEMBAHAN}%
\def\approvalname{PENGESAHAN}%
\def\partname{BAGIAN}%
\def\chaptername{BAB}%
\def\appendixname{LAMPIRAN}%
\def\refname{DAFTAR PUSTAKA}%
\def\bibname{DAFTAR PUSTAKA}%
\def\indexname{Indeks}%
\def\figurename{Gambar}%
\def\tablename{Tabel}%
\def\pagename{Halaman}%
\def\bplagiasiname{PERNYATAAN BEBAS PLAGIASI}%
\def\spernyataanname{SURAT PERNYATAAN}%
}

%English
\def\captionsenglish{%
\def\prefacename{PREFACE}%
\def\contentsname{CONTENTS}%
\def\listfigurename{LIST OF FIGURES}%
\def\listtablename{LIST OF TABLES}%
\def\listappendixname{LIST OF APPENDICES}%
\def\nomenclaturename{NOMENCLATURE}%
\def\abstractname{\textit{ABSTRACT}}%
\def\partname{PART}%
\def\chaptername{CHAPTER}%
\def\appendixname{APPENDIX}%
\def\refname{REFERENCES}%
\def\bibname{REFERENCES}%
\def\indexname{Index}%
\def\figurename{Figure}%
\def\tablename{Table}%
\def\pagename{Page}%
}

%------------------------------------------------------------]
% Define thesis's inputs
%------------------------------------------------------------
\gdef\@university{Universitas Syiah Kuala}
\gdef\@faculty{Fakultas Matematika dan Ilmu Pengetahuan Alam}
\gdef\@city{Banda Aceh}
\newcommand{\judulcover}[1]{\gdef\@judulcover{#1}}
\newcommand{\@judulcover}{}
\newcommand{\judul}[1]{\gdef\@judul{#1}}
\newcommand{\@judul}{}
\newcommand{\judulinggris}[1]{\gdef\@judull{#1}}
\newcommand{\@judulinggris}{}
\newcommand{\fullname}[1]{\gdef\@fullname{#1}}
\newcommand{\@fullname}{}
\newcommand{\idnum}[1]{\gdef\@idnum{#1}}
\newcommand{\@idnum}{}
\newcommand{\examdate}[1]{\gdef\@examdate{#1}}
\newcommand{\approvaldate}[1]{\gdef\@approvaldate{#1}}
\newcommand{\@examdate}{\number\day~\ifcase\month\or
    Januari\or Februari\or Maret\or April\or Mei\or Juni\or
    Juli\or Agustus\or September\or Oktober\or November\or Desember\fi
    \space \number\year}
\newcommand{\degree}[1]{\gdef\@degree{#1}}
\newcommand{\@degree}{}
\newcommand{\yearsubmit}[1]{\gdef\@yearsubmit{#1}}
\newcommand{\@yearsubmit}{}
\newcommand{\program}[1]{\gdef\@program{#1}}
\newcommand{\@program}{}
\newcommand{\headprogram}[1]{\gdef\@headprogram{#1}}
\newcommand{\@headprogram}{}
\newcommand{\dept}[1]{\gdef\@dept{#1}}
\newcommand{\@dept}{}
\newcommand{\firstsupervisor}[1]{\gdef\@firstsupervisor{#1}}
\newcommand{\@firstsupervisor}{}
\newcommand{\secondsupervisor}[1]{\gdef\@secondsupervisor{#1}}
\newcommand{\@secondsupervisor}{}
\newcommand{\kajur}[1]{\gdef\@kajur{#1}}
\newcommand{\@kajur}{}
\newcommand{\firstnip}[1]{\gdef\@firstnip{#1}}
\newcommand{\@firstnip}{}
\newcommand{\secondnip}[1]{\gdef\@secondnip{#1}}
\newcommand{\@secondnip}{}
\newcommand{\kajurnip}[1]{\gdef\@kajurnip{#1}}
\newcommand{\@kajurnip}{}
\newcommand{\dekan}[1]{\gdef\@dekan{#1}}
\newcommand{\@dekan}{}
\newcommand{\dekannip}[1]{\gdef\@dekannip{#1}}
\newcommand{\@dekannip}{}
\newcommand{\kaprodi}[1]{\gdef\@kaprodi{#1}}
\newcommand{\@kaprodi}{}
\newcommand{\kaprodinip}[1]{\gdef\@kaprodinip{#1}}
\newcommand{\@kaprodinip}{}

%------------------------------------------------------------
% Define cover in Indonesian
%------------------------------------------------------------
\def\cover{%
  % it's me!
  %\newgeometry{a4paper,left=4cm,right=2.7cm,top=3cm,bottom=2.5cm}
  \newgeometry{a4paper,left=3.5cm,right=3cm,top=3cm,bottom=3cm}

  \thispagestyle{empty}%
  \pagenumbering{roman}
  \setcounter{page}{1}
    \begin{center}
      \begin{singlespace}
      \fontsize{14pt}{16pt}\selectfont\MakeUppercase{\Large{\bfseries\@judul}}\par\nobreak
      \vspace{2.5cm}
      \MakeUppercase{\large{\bfseries{TUGAS AKHIR}}}\\ %it's me!
      \vspace{1.0cm}
	  \normalsize{Diajukan untuk melengkapi tugas-tugas dan\\ memenuhi syarat-syarat guna memperoleh gelar Sarjana Komputer\\} %it's me!
       \vspace{1.0cm}
       {\normalfont
        Oleh:\\
		\vspace{1.0cm}
        \MakeUppercase{\normalfont\bfseries \@fullname}\\
        \MakeUppercase{\normalfont\bfseries \@idnum}}\\
		\vspace{2cm}
		\vfill
		\includegraphics[width=0.3\textwidth]{image/logo_unsyiah.png}
        \vfill
		\vspace{2cm}
       {\normalfont
         \MakeUppercase{\normalfont\bfseries Program Studi \@dept Jurusan \@dept}\\
         \MakeUppercase{\normalfont\bfseries\@faculty} \MakeUppercase{\normalfont\bfseries\@university}\\
         \MakeUppercase{\normalfont\bfseries\@city}\\
         %\vspace{0.5cm}
         \MakeUppercase{\normalfont\bfseries\@yearsubmit}}\\
      \end{singlespace}
    \end{center}
}

%------------------------------------------------------------
%Approval Page
%------------------------------------------------------------
\def\cover{%
	% it's me!
	%\newgeometry{a4paper,left=4cm,right=2.7cm,top=3cm,bottom=2.5cm}
	
	\newgeometry{a4paper,left=3.5cm,right=3cm,top=3cm,bottom=3cm}
	\disableboldchapterintoc
	\addcontentsline{toc}{chapter}{Halaman Judul}
	\thispagestyle{empty}%
	\pagenumbering{roman}
	\setcounter{page}{1}
	\begin{center}
		\begin{singlespace}
			\fontsize{18pt}{20pt}\selectfont\MakeUppercase{\Large{\bfseries\@judulcover}}\par\nobreak
			\vspace{2.5cm}
			\MakeUppercase{\large{\bfseries{TUGAS AKHIR}}}\\ %it's me!
			\vspace{1.0cm}
			\normalsize{Diajukan untuk melengkapi tugas-tugas dan\\ memenuhi syarat-syarat guna memperoleh gelar Sarjana Komputer\\} %it's me!
			\vspace{1.0cm}
			{\normalfont
				Oleh:\\
				\vspace{1.0cm}
				\MakeUppercase{\normalfont\bfseries \underline{\@fullname}}\\
				\MakeUppercase{\normalfont\bfseries \@idnum}}\\
			\vspace{2cm}
			\vfill
			\includegraphics[width=0.3\textwidth]{image/logo_unsyiah.png}
			\vfill
			\vspace{2cm}
			{\normalfont
				\MakeUppercase{\normalfont\bfseries Program Studi Informatika Jurusan \@dept}\\
				\MakeUppercase{\normalfont\bfseries\@faculty} \MakeUppercase{\normalfont\bfseries\@university ,  \@city}\\
				%\MakeUppercase{\normalfont\bfseries\@city}\\
				%\vspace{0.5cm}
				\MakeUppercase{\normalfont\bfseries\@yearsubmit}}\\
		\end{singlespace}
	\end{center}
}

% %------------------------------------------------------------
% %Approval Page
% %------------------------------------------------------------
% \def\approvalpage{%
% 	\clearpage\addcontentsline{toc}{chapter}{Halaman Pengesahan}
% 	\chapter*{\approvalname}%
% 	\thispagestyle{empty}
% 	\begin{center}
% 		\begin{doublespace}
% 			\vspace{0.5cm}
% 			\fontsize{12pt}{10pt}\selectfont\MakeUppercase{\large{\bfseries\@judul}}\par\nobreak

% 			\vspace{1cm}
% 			\fontsize{12pt}{10pt}\selectfont\MakeUppercase{\large{\bfseries\@judull}}\par\nobreak

% 			\vspace{0.9cm}
% 			Oleh:
% 			%\vspace{-0.5cm}
% 			\begin{singlespace}
% 				\begin{compactitem}
% 					\addtolength{\itemindent}{3cm}
% 					\setlength{\parsep}{0pt}
% 					\item[]{\makebox[2cm]{Nama\hfill} : \@fullname}
% 					\item[]{\makebox[2cm]{NPM\hfill} : \@idnum}
% 					\item[]{\makebox[2cm]{Jurusan\hfill} : \@dept}
% 				\end{compactitem}
% 			\end{singlespace}
% 			%\vspace{2.0cm} edited 16/04/2022
% 			\vspace{0.9cm}
			
% 			%Telah disetujui dan disahkan\\
% 			%pada tanggal \@approvaldate
% 			%\vspace{1.0cm}

% 			Menyetujui:\\
% 			\onehalfspacing
% 				\begin{tabular}{lll}
% 					Pembimbing I & \hspace{2.5cm} & Pembimbing II \\
% 					\vspace{0.3cm} & \vspace{0.3cm} & \vspace{0.3cm}\\
% 					\underline{\@firstsupervisor}& &
% 					\underline{\@secondsupervisor} \\
% 					NIP. \@firstnip & &  NIP. \@secondnip
% 				\end{tabular}	
% 			%\vspace{2.0cm} edited 16/04/2022
% 			\vspace{1.0cm}
			
% 			% Mengetahui dekan dan kajur informatika
% 			% Tanpa mengetahui dekan
% 			Mengetahui:\\
% 				\begin{tabular}{lll}
% 					Dekan Fakultas MIPA & &
% 					Koordinator Program Studi Informatika \\ 
% 					\vspace{-0.27cm} & \vspace{-0.27cm} & \vspace{-0.27cm}\\
% 					Universitas Syiah Kuala, & & Universitas Syiah Kuala,\\
% 					\vspace{0.3cm} & \vspace{0.3cm} & \vspace{0.3cm}\\
% 			 		\underline{\@dekan} & & \underline{\@kaprodi}\\
% 		      			NIP. \@dekannip & & NIP. \@kaprodinip
% 				\end{tabular}
% 		\end{doublespace}

% 		\vspace{0.9cm}
% 		Lulus Sidang Sarjana pada hari \@approvaldate
% 	\end{center}
% } sidang

%------------------------------------------------------------
%Approval Page
%------------------------------------------------------------
\def\approvalpage{%
	\clearpage\addcontentsline{toc}{chapter}{Halaman Pengesahan}
	\chapter*{\approvalname}%
	\thispagestyle{empty}
	\begin{center}
		\begin{doublespace}
			\vspace{0.5cm}
			\fontsize{12pt}{10pt}\selectfont\MakeUppercase{\large{\bfseries\@judul}}\par\nobreak

			% \vspace{1cm}
			% \fontsize{12pt}{10pt}\selectfont\MakeUppercase{\large{\bfseries\@judull}}\par\nobreak

			\vspace{0.9cm}
			Oleh:
			%\vspace{-0.5cm}
			\begin{singlespace}
				\begin{compactitem}
					\addtolength{\itemindent}{3cm}
					\setlength{\parsep}{0pt}
					\item[]{\makebox[2cm]{Nama\hfill} : \@fullname}
					\item[]{\makebox[2cm]{NPM\hfill} : \@idnum}
					\item[]{\makebox[2cm]{Jurusan\hfill} : \@dept}
				\end{compactitem}
			\end{singlespace}
			%\vspace{2.0cm} edited 16/04/2022
			\vspace{0.9cm}
			
			%Telah disetujui dan disahkan\\
			%pada tanggal \@approvaldate
			%\vspace{1.0cm}

			Menyetujui:\\
			\vspace{1.0cm}
			\onehalfspacing
				\begin{tabular}{lll}
					Pembimbing I & \hspace{2.5cm} & Pembimbing II \\
					\vspace{0.3cm} & \vspace{0.3cm} & \vspace{0.3cm}\\
					\underline{\@firstsupervisor}& &
					\underline{\@secondsupervisor} \\
					NIP. \@firstnip & &  NIP. \@secondnip
				\end{tabular}	
			%\vspace{2.0cm} edited 16/04/2022
			\vspace{1.0cm}
			
			% Mengetahui dekan dan kajur informatika
			% Tanpa mengetahui dekan
			
			Mengetahui:\\
			\vspace{0.9cm}
			Koordinator Program Studi Informatika \\ 
			\vspace{-0.27cm}\\
			Universitas Syiah Kuala,\\
			\vspace{1.7cm}\\
			\underline{\@kaprodi} & \\
			NIP. \@kaprodinip &

			\end{doublespace}
		% \vspace{0.9cm}
		% Lulus Sidang Sarjana pada hari \@approvaldate
	\end{center}


} % seminar-hasil

%------------------------------------------------------------
% Acknowlegment
%------------------------------------------------------------
\def\acknowledgment{%
  \chapter*{\acknowledgmentname}%
\null\vfill%Force the content of acknowledment to bottom page
\addcontentsline{toc}{chapter}{\acknowledgmentname}
}


\def\bplagiasi{%
  \chapter*{\bplagiasiname}%
  \vspace{0.2cm}
\addcontentsline{toc}{chapter}{Pernyataan Bebas Plagiasi}
}

\def\spernyataan{%
  \chapter*{\spernyataanname}%
  \vspace{0.2cm}
\addcontentsline{toc}{chapter}{Surat Pernyataan}
}

%------------------------------------------------------------
% Preface
%------------------------------------------------------------
\def\preface{%
  \chapter*{\prefacename}%
  \vspace{0.2cm}
\addcontentsline{toc}{chapter}{Kata Pengantar}
}

%------------------------------------------------------------
% Nomenclature
%------------------------------------------------------------
\def\singkatan{%
  \chapter*{\nomenclaturename}%
  \thispagestyle{plain}
  %\chapter*{\nomenclaturename}%
  %\printglossary
\addcontentsline{toc}{chapter}{\nomenclaturename}
}

%------------------------------------------------------------
% Redefine Abstract in Indonesian
%------------------------------------------------------------
\def\abstractind{%
  \clearpage\thispagestyle{chapterheading}%
  \chapter*{\abstractname}%
  {\parindent \z@ \centering \normalfont
  %{\large\textbf{\abstractname}} \\
  %\vspace{1.0cm}
    }
  \begin{singlespacing}%
  %\vskip 20\p@
  \addcontentsline{toc}{chapter}{Abstrak}
}
\def\endabstractind{\par\vfil\null\end{singlespacing}}

%------------------------------------------------------------
% Redefine Abstract in English
%------------------------------------------------------------
\def\abstracteng{%
  \clearpage\thispagestyle{chapterheading}\selectlanguage{english}
  \chapter*{\abstractname}%
  {\parindent \z@ \centering \normalfont
  %{\large\textbf{\abstractname}} \\
  %\vspace{1.0cm}
    }
  \begin{singlespacing}%
  %\vskip 20\p@
  \addcontentsline{toc}{chapter}{\textit{Abstract}}
}
\def\endabstracteng{\par\vfil\null\end{singlespacing}%
\selectlanguage{bahasa}}

% Tabularization
\newcommand{\itab}[1]{\hspace{0em}\rlap{#1}}
\newcommand{\tab}[1]{\hspace{.2\textwidth}\rlap{#1}}


\AtBeginDocument{%
\if@doublesp%
\doublespacing%
\else\if@singlesp%
\singlespacing%
\else
\onehalfspacing%
\fi%
\fi
}

\AtBeginDocument{%
\if@langindo%
\selectlanguage{bahasa}%
\else
\selectlanguage{english}%
\fi
}

\endinput
