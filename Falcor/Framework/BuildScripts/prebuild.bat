@echo off

rem %1 -> Falcor Core Directory Path
rem %2 -> Solution Directory Path
rem %3 -> Project Directory Path
rem %4 -> Platform Name.
rem %5 -> Platform Short Name.
rem %6 -> Configuration.
rem %7 -> Output Directory


rem echo "Falcor Core Directory Path:"
rem echo %1

rem echo "Solution Directory Path:"
rem echo %2

rem echo "Project Directory Path:"
rem echo %3

rem echo "Platform Name:"
rem echo %4

rem echo "Platform Short Name:"
rem echo %5

rem echo "Configuration:"
rem echo %6

rem echo "Output Directory:"
rem echo %7


rem Set the Falcor Backend to D3D12 by default.
set falcor_backend=FALCOR_DXR

rem Change the Props File to Align with the Backend.
rem This also changes the FALCOR_CORE_DIRECTORY
rem start /wait /b %1BuildScripts\PatchFalcorProps\PatchFalcorPropertySheet.exe %1 %2 %falcor_backend%

rem Call Update Dependencies - Runs packman.
call %1\..\update_dependencies.bat
if errorlevel 1 exit /b 1

