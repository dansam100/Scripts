@echo off
pushd ..
::set curdir="%CD%
::set execfol=Executables
::set zipfol=Zips
::set docfol=Docs
::set songfol=Songs
::set picfold=Pics
::set codefol=CodeFiles
	
:: move all folders here.
	mkdir ./_folders
	move /y "..\*" .

::if not exist %curdir%\CodeFiles\NUL"
	mkdir .\codefiles
::if not exist %curdir%\Executables\NUL"
	mkdir .\executables"
::if not exist %curdir%\Executables\NUL"
	mkdir .\msi"
::if not exist %curdir%\Zips\NUL"
	mkdir .\zips"
::if not exist %curdir%\Pics\NUL"
	mkdir .\pics
::if not exist %curdir%\Docs"\NUL"
	mkdir .\docs
::if not exist %curdir%\Songs\NUL"
	mkdir .\songs
::if not exist %curdir%\Songs\NUL"
	mkdir .\others
	
@echo on
::move /y SONGS
cd .\songs
move /y "..\*.mp3.*" .
move /y "..\*.mp3" .
move /y "..\*.wma" .
cd..

::MOVE CODEFILES
cd .\CodeFiles
move /y "..\*.cpp*" .
move /y "..\*.cs*" .
move /y "..\*.rb*" .
cd..

::move /y EXECUTABLES
cd .\executables
move /y "..\*.exe" .
move /y "..\*.bat" .
move /y "..\*.cmd" .
cd..

::move /y MSI and INSTALLERS
cd .\msi
move /y "..\*.msi" .
cd..

::move /y PICTURES
cd .\pics
move /y "..\*.bmp" .
move /y "..\*.bmp*" .
move /y "..\*.jpg" .
move /y "..\*.png" .
move /y "..\*.gif" .
move /y "..\*.jpeg" .
move /y "..\*.jpg.*" .
move /y "..\*.jpg*" .
move /y "..\*.tif*" .
cd..

::move /y DOCUMENTS
cd .\docs
move /y "..\*.doc" .
move /y "..\*.pdf" .
move /y "..\*.txt*" .
move /y "..\*.ppt*" .
move /y "..\*.mht*" .
move /y "..\*.doc*" .
move /y "..\*.rtf" .
move /y "..\*.mdb" .
cd..

::move /y ZIPFILES
cd .\zips
move /y "..\*.rar" .
move /y "..\*.rar*" .
move /y "..\*.zip" .
move /y "..\*.zip*" .

::MOVE EXCESS
cd .\others
move /y "..\*.*" .

goto exit

:exit
popd