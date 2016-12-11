=== C# script batch 1.00 ===

This is batch file to execute immediately C# language like scirpt.
It uses C# compiler preinstalled on Windows 7/10.
Please install mono on bash (Ubuntu Linux).


Example of C# (.cs) : Shows "Hello, world!".
---------------------------------------------------------
using  s = System;  // Alias "s::"

class MainClass
{
	static void  Main()
	{
		s::Console.WriteLine( "Hello, world!" );
	}
}
---------------------------------------------------------

Please set up to open by cs_script.bat, if .cs file was double clicked.
You can execute C# like batch file and WSH (VBScript/JScript).
You can execute by drag and drop .cs file on cs_script.bat, even if you did not set up.

*** Attention: Don't execute malicious .cs file!

On command promt, the batch file does not wait for any key input at the end of
.cs file, if command line was specified with /c option.
Example:
---------------------------------------------------------
cs_script.bat  new.cs  /c  Parameter1
---------------------------------------------------------

On bash, please specify with "cs-script" in your shell.
Example:
---------------------------------------------------------
./cs-script  new.cs  Parameter1
---------------------------------------------------------

You can connect with debugger, if "// Debug=on" was written in .cs file.
But it is necessary to be installed Visual Studio Express 2015 for Windows Desktop
and so on and be extracted content in cs_script_project.zip
at "Visual Studio 2015\Projects\cs_script" in user document folder.

On bash, connecting with debugger is not suppored.

Please edit cs_script.bat, if you change version of C# compiler and
the project for debugging.


cs_script ver 1.00
cs_script is provided under 3-clause BSD license.
Copyright (C) 2016 Sofrware Design Gallery "Sage Plaisir 21" All Rights Reserved.
http://www.sage-p.com/

