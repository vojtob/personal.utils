FOR /R %%c in (*.jpg) DO call convert.exe -colorspace Gray "%%~fc" "%%~pc/BW/%%~nc-BW.png"
REM FOR /R %%c in (*.png) DO call convert.exe -colorspace Gray "%%~fc" "%%~pc/BW/%%~nc-BW.png"