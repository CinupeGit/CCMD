@echo off
echo Please enter the title of the MessageBox. (Appears at the top) (Forbidden characters not allowed in the title: "
echo:
set /p title="EX: Attention, please! >"
echo:
echo Please enter the message of the MessageBox. (Appears in the middle) (Forbidden characters not allowed in the message: ")
echo:
set /p message="EX: Hello! >"
echo:
echo Please enter the savename of the MessageBox (Appears in your files if you want to go to the history of your MsgBox creations. Do NOT put a space in your savename.)
echo:
set /p savename="EX: MyMsgBoxSave1 >"
echo:
echo Creating MsgBox..
echo:

ping localhost -n 3 > NUL

echo If a message appeared saying "A subdirectory or file ccmd already exists. OR\AND A subdirectory or file MsgBox already exists."
echo Do not worry, no problems have occoured.
echo:
cd %temp%
md ccmd
cd ccmd
md MsgBox
cd MsgBox
echo x=msgbox("%message%",64+0,"%title%") > %savename%.vbs
echo:
echo Your file has been created. Press any key to see what you've created!
pause > NUL
cd %temp%\ccmd\MsgBox
start %savename%.vbs
echo:
echo If you want to ever see your MsgBox history, they are in this folder:
echo C:\Users\%username%\AppData\Local\Temp\ccmd\MsgBox
cd C:\ccmd