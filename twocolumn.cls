% BSD 2-Clause License
% Copyright (c) 2023, Alex Dioso
% Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:
%
% 1. Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.
%
% 2. Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.
%
% THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{twocolumn}[2023-11-26 Two Column Custom Resume class]
\LoadClass{resume}
\renewcommand{\normalsize}{\fontsize{12pt}{14pt}\selectfont}
\usepackage[letterpaper, left=0.5in, top=0.5in, right=0.5in, bottom=0.5in]{geometry}
\setlength\columnsep{20pt}
\setlength{\parindent}{0pt}
\setlength{\columnsep}{-2.5cm}
\usepackage{enumitem}

\setlist{nosep}

\renewcommand{\company}[4]{
	\smallskip
	\textbf{#1}

	\textit{#2}\hfill\textit{#3}

	\smallskip
	#4
	\medskip
}

\renewcommand{\school}[3]{
	\textbf{#1}

	\textit{#2}

	\textit{#3}

	\medskip
}

% Unable to get open-resume to recognize the date for a project. Tried different forms of date, different placements, nothing has worked yet.
\renewcommand{\project}[4]{
	\lowercase{\def\temp{#1}}
	\StrDel{\temp}{ }[\temp]
	\IfSubStr{\temp}{project}{
		\PackageError{twocolumn}{Do not use the word 'project' in a project title.}{ATS Systems don't seem to parse project names with the word 'project' in them.}
	}{
		\href{#2}{\textbf{#1}}
	
		\textit{#3}

		#4

		\medskip
	}
}

\renewcommand{\skill}[1]{
	\item #1
}

\renewcommand{\skills}[1]{
	\gdef\@skills{
		\begin{itemize}[leftmargin=*]
		#1
		\end{itemize}
	}
}

\newcommand{\secondarysection}[2]{
	\strut
	\textbf{\large #1}
	\strut
	\hrule
	\medskip
	\smallskip

	#2
}

\renewcommand{\makeresume}{
	\begin{document}
	\begin{center}
	\textbf{\LARGE \@name}
	\smallskip

	\href{mailto:\@email}{\@email} • \href{https://\@personalurl}{\@personalurl} • \href{tel:\@personalphone}{\@personalphone}
	\end{center}
	\bigskip

	\begin{minipage}[t]{0.65\linewidth}
	\raggedright
	\strut
	\textbf{\large EXPERIENCE}
	\strut
	\hrule
	\medskip

	\@experience

	\end{minipage}
	\hfill
	\begin{minipage}[t]{0.3\linewidth}
	\raggedright

	\secondarysection{SKILLS}{\@skills}

	\bigskip

	\secondarysection{PROJECTS}{\@projects}

	\bigskip

	\secondarysection{EDUCATION}{\@education}

	\end{minipage}

	\end{document}
}
