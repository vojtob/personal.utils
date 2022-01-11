SET IPATH=C:\Projects_src\resources\dxc-icons
SET DPATH=C:\Projects_src\resources\dxc-icons\generated

magick -size 1204x1204 canvas:transparent ^
  -gravity Center ( %IPATH%\badgeOK.png -resize 1200x1200 ) -composite ^
  -fill red -draw "rectangle 320,400,880,920" ^
  -transparent red ^
  -gravity Center ( %IPATH%\AbstractRandom.png -resize 550x550 ) -geometry +0+60 -composite ^
  %DPATH%\secureIntegrate.png

  