@echo off

rem created: 2023-03-20
rem filename: qb-env.cmd
rem purpose: display some parts of qutebrowser's current environment

echo Hello from qb-env.cmd!

rem next line echoes a blank line
echo(
echo Working directory is...
cd

echo(
echo Active code page is...
chcp

echo(
echo Environment variables starting with QUTE are...
set QUTE

echo(
echo Environment variables starting with PATH are...
set PATH

@echo off

echo(
echo Args are...
echo %1 %2

rem If Git Bash's sh.exe is on your path, uncomment next 7 lines
rem echo(
rem echo Git Bash: pwd
rem "sh.exe" -l -c "pwd"

rem echo(
rem echo Git Bash: printenv | grep -i qute
rem "sh.exe" -l -c "printenv | grep -i qute"