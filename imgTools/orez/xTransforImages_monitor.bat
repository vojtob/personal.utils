FOR %%c in (*.png, *.jpg) DO call "%IM_HOME%\convert.exe" ^
	-gravity North ^
	-crop 1580x1040+0+116 ^
	-border 2 ^
	-bordercolor DimGray ^
	"%%~fc" "%%~pctransformed\%%~nc.png"
REM	-resize 1000x657 ^
