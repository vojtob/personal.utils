call "%IM_HOME%\convert.exe" ^
	-gravity North 
	-crop 2450x1220+2+172 ^
	-border 2 ^
	-bordercolor DimGray ^
	"%1" "%1_transformed.png"