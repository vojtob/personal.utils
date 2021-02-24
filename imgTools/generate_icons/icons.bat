SET IPATH=C:\Projects_src\resources\dxc-icons
SET DPATH=C:\Projects_src\resources\dxc-icons\generated

magick -size 1204x1204 canvas:transparent ^
  ( %IPATH%\CloudFileSync.png -crop 676x522!+315+682 -resize 1200 ) -gravity Center -composite ^
  %DPATH%\connect.png

magick -size 700x700 canvas:transparent ^
  -gravity Center ( %IPATH%\reinsurance.png -crop 600x550!+0+124 ) -composite ^
  -fill red -draw "rectangle 50,550,120,626" ^
  -transparent red ^
  -rotate "-90" ^
  -flip ^
  -resize 1204 ^
  %DPATH%\connections.png

magick -size 1204x1204 canvas:transparent ^
  -fill black -draw "polygon 2,472,802,472,802,342,1202,602,802,862,802,732,2,732" ^
  %DPATH%\arrow.png

magick %IPATH%\lifeinsurance.png ^
  -fill black -draw "circle 602,951,602,702" ^
  %DPATH%\people_secure.png
  