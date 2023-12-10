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
\ProvidesClass{resume}[2023-11-26 Custom Resume class]
\LoadClass{article}
\usepackage[hidelinks]{hyperref}
\usepackage{xstring}
\usepackage[T1]{fontenc}

\pagenumbering{gobble}

\newcommand\name[1]{\gdef\@name{#1}}
\def\@name{\@latex@warning@no@line{No \noexpand\name given}}

\newcommand\email[1]{\gdef\@email{#1}}

\newcommand\personalurl[1]{\gdef\@personalurl{#1}}

\newcommand\personalphone[1]{\gdef\@personalphone{#1}}

\newcommand\education[1]{\gdef\@education{#1}}

\newcommand\experience[1]{\gdef\@experience{#1}}

\newcommand\skills[1]{\gdef\@skills{#1}}

\newcommand\projects[1]{\gdef\@projects{#1}}

\newcommand\company[4]{
Your class should override this to style it

First Param - Company Name

Second Param - Job Title

Third Param - Dates Employed

Fourth Param - Description
} 

\newcommand\school[3]{
Your class should override this to style it

First Param - School Name

Second Param - Degree

Third Param - Date of graduation
}

\newcommand\project[4]{

Your class should override this to style it

First Param - Project Name (In order to be parsed by ATS correctly it seems like the name must not include the word 'project')

Second Param - Project URL

Third Param - Date(s)

Fourth Param - Description

}

\newcommand\skill[1]{

Your class should override this to style it

}

\newcommand{\makeresume}{
Your class needs to override this.
}