FOR /R %%c in (*.svg) DO call "%IM_HOME%\convert.exe" -density 144 "%%~fc" "%%~fc.png"

REM convert SVG to PNG with transparent background
magick -density 144 -background none spring.svg spring.png