\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{vijreport}[2017/09/26 Vulcanus in Japan industrual report template]

\RequirePackage{tikz}
\RequirePackage{graphicx}
\RequirePackage{xcolor}
\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc}
\RequirePackage{newtxmath,newtxtext}

\LoadClass{article}
\setcounter{secnumdepth}{4}

\RequirePackage{fancyhdr}


\RequirePackage[top=3.5cm, bottom=3.5cm, right=3cm, left=3cm]{geometry}

\fancyhf{} % sets both header and footer to nothing
\cfoot{\thepage}
\renewcommand{\headrulewidth}{0pt}
\usetikzlibrary{calc}

\definecolor{europeblue}{RGB}{0,51,153}
\definecolor{redjapan}{RGB}{239,51,64}

\RequirePackage{soul}
\pagestyle{fancy}

\renewcommand\maketitle{
\begin{titlepage}
	\thispagestyle{fancy}
	\vspace*{0cm}
	\begin{center}
			\begin{tikzpicture}[scale=0.037037]
			\filldraw[europeblue] (-27,-18) rectangle (27,18);  
			\pgfmathsetmacro\inr{tan(36)/cos(18)}
			\foreach \i in {0,1,...,11} {
			\begin{scope}[shift={(30*\i:12)}]
				\fill[fill={rgb,255:red,255;green,204;blue,0}] (90:2)
				\foreach \x in {0,1,...,4} { -- (90+72*\x:2) -- (126+72*\x:\inr) };
			  \end{scope}
			}
			\draw[gray] (27, 18) rectangle (81, -18);
			\fill[redjapan] (54, 0) circle(10.8);
	\end{tikzpicture}

		\Large{\sffamily EU-Japan center for Industrial Cooperation}
	
		\vspace*{4.5cm}
		\LARGE{Vulcanus In Japan Industry Report 2017-2018}

		\vspace*{1.5cm}
		\underline{\smash{\large Selected Area of specialization : \@title}}
	
		\vspace*{.5cm}
		\underline{\smash{\large VIJ participant name in full : \@author}}

		\vspace{7cm}
		{\large Tokyo, \@date}

	\end{center}
	\begin{tikzpicture}[remember picture, overlay]
		\fill[redjapan] ($(current page.north west)+(1.8,0)$) rectangle
		($(current page.south west)+(1.9, 0)$);
		\fill[europeblue] ($(current page.north east)+(-1.8,0)$)
		rectangle ($(current page.south east)+(-1.9, 0)$);
	\end{tikzpicture}
\end{titlepage}
}
\RequirePackage{hyperref}
\RequirePackage{titlesec}

\renewcommand{\thesection}{\Alph{section}}
\renewcommand{\thesubsection}{\arabic{subsection}}
\renewcommand{\thesubsubsection}{\alph{subsubsection}}
\renewcommand{\theparagraph}{\roman{paragraph}}

\titleformat*{\section}{}
\titleformat*{\subsection}{}
\titleformat*{\subsubsection}{}
\titleformat*{\paragraph}{}

