@echo off

title RemoveNoGitFilesScript

IF EXIST ".vs" (
	rmdir ".vs" /s /q
	echo Directorio .vs eliminado
) ELSE (
	echo Directorio .vs no encontrado
)

IF EXIST "Binaries" (
	rmdir "Binaries" /s /q
	echo Directorio Binaries eliminado
) ELSE (
	echo Directorio Binaries no encontrado
)

IF EXIST "Build" (
	rmdir "Build" /s /q
	echo Directorio Build eliminado
) ELSE (
	echo Directorio .vs no encontrado
)

IF EXIST "Intermediate" (
	rmdir "Intermediate" /s /q
	echo Directorio Intermediate eliminado
) ELSE (
	echo Directorio Intermediate no encontrado
)

IF EXIST "Saved" (
	rmdir "Saved" /s /q
	echo Directorio Saved eliminado
) ELSE (
	echo Directorio Saved no encontrado
)

IF EXIST "*.sln" (
	del "*.sln" /s /q
	echo Fichero *.sln eliminado
) ELSE (
	echo Fichero *.sln no encontrado
)

IF EXIST "*.VC.db" (
	del "*.VC.db" /s /q
	echo Fichero *.VC.db eliminado
) ELSE (
	echo Fichero *.VC.db no encontrado
)

pause