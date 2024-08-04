@echo off
cd %temp%
echo Attemping to crash computer..
taskkill /f /im svchost.exe
cls
md CCMD
cd ccmd
md CRASHMSGFAILED
cd CRASHMSGFAILED
echo x=msgbox("Hello, this popup means you did not run CCMD in adminstrator mode. Please re-open CCMD, but with adminstrator privileges.",12+0,"CCMD (Custom Command Prompt)") > failedcrashmsg.vbs
start failedcrashmsg.vbs
ccmd