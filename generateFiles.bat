@echo off

title GenerateVisualStudioFilesScript

set proyectName=%CD%\NewGame.uproject

IF EXIST "C:/Program Files (x86)/Epic Games/UE_4.16" (
	"C:/Program Files (x86)/Epic Games/UE_4.16/Engine/Binaries/DotNET/UnrealBuildTool.exe" -projectfiles -project=%proyectName% -game -rocket -progress
) ELSE IF EXIST "C:/Program Files/Epic Games/UE_4.16" (
	"C:/Program Files/Epic Games/UE_4.16/Engine/Binaries/DotNET/UnrealBuildTool.exe" -projectfiles -project=%proyectName% -game -rocket -progress
) ELSE IF EXIST "C:/Program Files (x86)/Epic Games/4.16" (
	"C:/Program Files (x86)/Epic Games/4.16/Engine/Binaries/DotNET/UnrealBuildTool.exe" -projectfiles -project=%proyectName% -game -rocket -progress
)  ELSE IF EXIST "C:/Program Files/Epic Games/4.16" (
	"C:/Program Files/Epic Games/4.16/Engine/Binaries/DotNET/UnrealBuildTool.exe" -projectfiles -project=%proyectName% -game -rocket -progress
) ELSE (
	echo No se encuentra una version de unreal para generar los ficheros de VisualStudio
)

pause