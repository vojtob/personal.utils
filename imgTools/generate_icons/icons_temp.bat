SET IPATH=C:\Projects_src\resources\dxc-icons
SET DPATH=C:\Projects_src\resources\dxc-icons\generated

magick %IPATH%\servicemanagement.png ^
  -fill red -draw "rectangle 2,920,1200,1204" ^
  -transparent red ^
  ( %IPATH%\publicsector.png -resize 270x270 ) -gravity South -geometry +0+0   -composite ^
  ( %IPATH%\publicsector.png -resize 270x270 ) -gravity South -geometry +449+0   -composite ^
  ( %IPATH%\publicsector.png -resize 270x270 ) -gravity South -geometry -449+0   -composite ^
  %DPATH%\MOU-CSRU.png