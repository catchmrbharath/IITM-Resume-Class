%\NeedsTexFormat{LaTeX2e}
\ProvidesClass{mycv}[2011/09/18 Insti Standard Template CV]
%\renewcommand{\normalsize}{\fontsize{10pt}{12pt}\selectfont}
%\setlength{\textwidth}{6.5in}
%\setlength{\textheight}{8in}

%Loads the article class as the base template for further changes
\LoadClass{article}

%Following are all the packages required for this class file
\RequirePackage{titlesec}
\RequirePackage{palatino}
\RequirePackage[hmargin=.5in, vmargin=.5in]{geometry}
\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage{graphicx}
\RequirePackage{multicol}
\RequirePackage{array}

%Define fields that the user can set
\makeatletter
  \newcommand{\RollNumber}[1]{\def \@RollNumber {#1}}
  \newcommand{\Address}[1]{\def \@Address {#1}}
  \newcommand{\PhoneNumber}[1]{\def \@PhoneNumber {#1}}
  \newcommand{\Email}[1]{\def \@Email {#1}}
  \newcommand{\CourseVar}[1]{\def \@CourseVar {#1}}
  \RollNumber{}
  \Address{}
  \PhoneNumber{}
  \Email{}
  \CourseVar{}
\makeatother


%Defines how the title will look
\makeatletter
\def \maketitle{%
  \thispagestyle{empty}
  \pagestyle{empty}
  \begin{minipage}[.3\textwidth]{0.6\textwidth}
    \raggedright \vspace{2.5em} 
    {\Large \scshape \@author {} $|$ \@RollNumber} %Puts name and roll number
    \vspace{.5em}

    {\large \scshape Indian Institute of Technology Madras} %Puts insti name
    \vspace{.5em}
  \end{minipage}
  \begin{minipage}[.3\textwidth]{0.4\textwidth}
    \raggedleft
    \includegraphics[width=.3\textwidth]{logo.PNG} %Insti logo
  \end{minipage}
  \\[.5em] 
  \begin{minipage}{.33\textwidth}
    \raggedright
    \@Address %Address of the student
  \end{minipage} 
  \begin{minipage}{.33\textwidth}
    \begin{center}
      \@PhoneNumber %Phone number of the student
    \end{center}
  \end{minipage}
  \begin{minipage}{.33\textwidth}
    \raggedleft
    \@Email %Email id of the student
  \end{minipage}
  \vspace{-.5em} \hrule
}
\makeatother



%Define lengths that might be used later on in the document
\newlength{\EduTableOne}
\newlength{\EduTableTwo}
\newlength{\EduTableThree}
\newlength{\EduTableFour}

%Create a new variable TwoColumn to check for two-column format
\newif\ifLeftTwoColumn
\newif\ifRightTwoColumn
\newif\ifTwoColumn
\newif\ifCourse

%Set paragraph indent and lengths of previously defined variables
\setlength{\parindent}{0em}
\settowidth{\EduTableOne}{B.Tech in Electrical Engineering}
\settowidth{\EduTableTwo}{\textbf{Indian Institute of Technology Madras }}
\settowidth{\EduTableThree}{\textbf{\%/CGPA}}
\settowidth{\EduTableFour}{\textbf{completion}}

%Reformat section, subsection and subsubsection as needed
\titleformat{\section}{\Large\scshape\raggedright}{}{0em}{}[\titlerule]
\titleformat{\subsection}{\large\scshape\raggedright}{$\bullet$}{.5em}{}
\titleformat{\subsubsection}[runin]{\bf\large\raggedright}{$\bullet$}{.5em}{}

%Change the spacing options for section, subsection and subsubsection
%The first parameter specifies the gap from the margin in the default case
%and the indentation just before the title for runin
%The second parameter specifies the vertical space before the title
%The third parameter specifies the separation between title and text
\titlespacing{\section}{0em}{1em}{1em}
\titlespacing{\subsection}{0em}{.5em}{.25em}
\titlespacing{\subsubsection}{1.5em}{.25em}{.75em}



%Defines a new environment called Education that is dedicated for 
%creating the table for filling in details about education. The command
%\EduDetails must be used in order to enter stuff in here
\newenvironment{EducationTable}{%
  \begin{center}%
    \begin{tabular*}{\textwidth}{p{.25\textwidth} c c r}%
      {\bf Program} & {\bf Institution} & {\bf \%/CGPA} & {\bf Year of completion} \\[.75em] %
}
{\end{tabular*}%
\end{center}%
}
      
%Create a new environment specifically for course related content
\newenvironment{Course}{%
  \TwoColumntrue
  \vspace{-1em}
  \begin{multicols}{2}
    \raggedright
}
{
\end{multicols}
\TwoColumnfalse
}
%\newenvironment{Course}[1]{%
%  \LeftTwoColumntrue
%  \RightTwoColumnfalse
%  \Coursetrue
%  \section{#1}
%  \begin{tabular*}{.8\textwidth}{p{0.4\textwidth} p{0.4\textwidth}}
%}
%{\end{tabular*}
%\RightTwoColumntrue
%\LeftTwoColumnfalse
%\Coursefalse
%}


%Define new commands
%Define a new dated section type (NOT needed for IITM format)
\newcommand{\datedsection}[2]{%
  \section[#1]{#1 \hfill #2}%
}

%Define a new dated subsection that can be used for filling in project 
%durations etc.
\newcommand{\datedsubsection}[2]{%
  \subsection[#1]{#1 \hfill #2}%
}

%Define a new command called \Point which will take care of indentation and 
%allow you to fill in stuff inside a subsection
\newcommand{\Point}[1]{%
  \subsubsection{}%
  \raggedright
  \hangindent=3.45em\hangafter=1\noindent%
  \ifTwoColumn
    \parbox[t]{.4\textwidth}{#1}
  \else#1%
  \fi
  \par%
}
%\newcommand{\Point}[1]{%
%  %\subsubsection{}
%  \ifCourse
%    \ifLeftTwoColumn
%      
%      \begin{minipage}{.4\textwidth}
%	\subsubsection{} #1
%      \end{minipage}
%      \RightTwoColumntrue
%      \LeftTwoColumnfalse
%    %\fi
%    %\ifRightTwoColumn%
%    \else
%      \begin{minipage}{.4\textwidth}
%	\subsubsection{} #1
%      \end{minipage}
%      \RightTwoColumnfalse
%      \LeftTwoColumntrue
%    \fi
%  \else
%    \subsubsection{} 
%    \hangindent=3.45em\hangafter=1\noindent%
%    #1
%  \fi
%}


%Define the \EduDetails command that must be used inside an Education
%environment defined above
\newcommand{\EduDetails}[4]{%
  {#1} & {#2} & {#3} & {#4} \\[.2em] %
}
