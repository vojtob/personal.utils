SET IPATH=C:\Projects_src\resources\dxc-icons
SET DPATH=C:\Projects_src\resources\dxc-icons\generated

magick %IPATH%\badgeOK.png ^
  -fill red -draw "rectangle 302,500,902,916" ^
  -transparent red ^
  -gravity Center ( %IPATH%\Database.png -resize 620x620 -geometry +0+80 ) -composite ^
  %DPATH%\secureDB.png
