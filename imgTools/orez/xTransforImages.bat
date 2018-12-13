FOR %%c in (*.png, *.jpg) DO call "%IM_HOME%\convert.exe" ^
	-gravity North ^
	-shave 300x86 ^
	-border 2 ^
	-bordercolor DimGray ^
	"%%~fc" "%%~pctransformed\%%~nc.png"