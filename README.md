This is the work of Siddharth Shekhar and I am trying to publicize it and make it
better. If you end up improving it, please send a pull request so that all of
us can use it.

This is a readme file that will help you to use the mycv.cls file so that
you can create a resume in LaTeX based on the standard insititute template. Please
don't forget to keep the logo.PNG and the mycv.cls file in the same folder as the
one you are writing your .tex file in.

* Include the class file by typing \documentclass{mycv}
* To write your name, use \author{<name>}
* To write your roll number, use \RollNumber{<RollNo>}
* To write your address, use \Address{<address>}
* To write your phone number, use \PhoneNumber{<Phone Number>}
* To write your email id, use \Email{<id>}
* To create a new section with an underlined title, use \section{<Title>}
* To create the first level of indentation without dates, use \subsection{<Title>}.
To create one with dates, use \datedsubsection{<Title>}.
* To create the second level of indentation, use
\Point{
data
}
Please stick to this format because I've adjusted the indentation for this format
and this will also make your code more readable so that you can easily
make changes to it later.
* To create the table for filling out the educational details, 
use \begin{Education} data \end{Education}. Note that the first row has already
been filled out for you, and you only need to start from the BTech... line.
Also, data has to be filled in using \EduDetails{CourseName}{Institution}{CGPA}{YearOfPassing}.
* To create a two-column structure for filling in coursework, use the
\begin{Course} data \end{Course} format. Note that once in the Course environment,
you use the \Point command as described previously to enter any data that you need.
You do not need to worry about the indentation or the formatting or anything of
that sort. The code should take care of it for you.

If you run into any bugs/problems, either let us know through mail, or open
and issue in github.

Yours,
Siddharth Shekar (sid.lordvoldermont@gmail.com)
Bharath M R (catchmrbharath@gmail.com)
