@echo off
echo Do not enter "https://", just enter the website name and the .com or .xyz.
set /p website="Enter a website. EX: urlexample.com\urlexample.xyz >"
start https://%website%