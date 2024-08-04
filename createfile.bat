@echo off

set /p directory="Enter the Directory you want the file to appear in EX: C:\Folder\DIR >"
set /p filecontent="Enter what you want inside the file. Appears in the selected Directory. >"
set /p filename="Enter what you want the name to be of the TXT file. Appears in the selected your Directory. (Make sure to put a .txt or .file extention after the name.) >"

cd %directory%
echo %filecontent% > %filename%
cd C:\ccmd