cmake ^
	-G "NMake Makefiles" ^
	-D CMAKE_INSTALL_PREFIX=%LIBRARY_PREFIX% ^
        -DNANOFLANN_BUILD_EXAMPLES=OFF -DNANOFLANN_BUILD_TESTS=OFF ^
	%SRC_DIR%

if errorlevel 1 exit 1

nmake
if errorlevel 1 exit 1

nmake install
if errorlevel 1 exit 1
