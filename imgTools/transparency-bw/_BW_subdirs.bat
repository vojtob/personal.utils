del /Q BW
mkdir BW

FOR /R %%c in (*.png) DO call convert.exe -colorspace Gray "%%~fc" "%%~pc/BW/%%~nc-BW.png"
FOR /R %%c in (*.jpg) DO call convert.exe -colorspace Gray "%%~fc" "%%~pc/BW/%%~nc-BW.png"
