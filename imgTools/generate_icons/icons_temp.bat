SET IPATH=C:\Projects_src\resources\dxc-icons
SET DPATH=C:\Projects_src\resources\dxc-icons\generated

magick %IPATH%\DeviceUpdate.png ^
  -fill red -draw "rectangle 300,250,900,755" ^
  -transparent red ^
  -gravity Center ( %IPATH%\AbstractRandom.png -resize 550x550 ) -composite ^
  %DPATH%\integration-update.png
