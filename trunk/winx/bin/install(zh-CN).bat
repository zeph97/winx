@echo off

if "%MSDEVDIR%"=="" goto error
if not exist "%MSDEVDIR%\Template" md "%MSDEVDIR%\Template" 
echo on
copy zh-CN\winxwiz60.awx "%MSDEVDIR%\Template"
@pause
exit


:error
echo ERROR: 
