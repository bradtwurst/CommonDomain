@echo off
powershell -NoProfile -ExecutionPolicy unrestricted -Command "& .\build\Package.RunTask.ps1 %*"