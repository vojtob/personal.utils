SET IPATH=C:\Projects_src\resources\dxc-icons
SET DPATH=C:\Projects_src\resources\dxc-icons\generated

magick -size 1204x1204 canvas:transparent ^
  -gravity SouthWest ( %IPATH%\server.png -resize 800x800 ) -composite ^
  -gravity NorthEast ( %IPATH%\publicsector.png -resize 400x400 ) -composite ^
  %DPATH%\IS_VS.png

magick -size 1204x1204 canvas:transparent ^
  -gravity SouthWest ( %IPATH%\server.png -resize 800x800 ) -composite ^
  -gravity NorthEast ( %IPATH%\retail2.png -resize 400x400 ) -composite ^
  %DPATH%\IS_3.png
  
magick -size 1204x1204 canvas:transparent ^
  -gravity SouthWest ( %IPATH%\server.png -resize 800x800 ) -composite ^
  -gravity NorthEast ( %IPATH%\AbstractRandom.png -resize 400x400 ) -composite ^
  %DPATH%\IS_integration.png

magick -size 1204x1204 canvas:transparent ^
  ( %IPATH%\Database.png -resize 1100x1100 ) -gravity NorthWest -composite ^
  -fill red -draw "rectangle 654,511,1204,1204" ^
  -transparent red ^
  ( %IPATH%\Documents.png -crop 700x902!+0+302 -resize 500 ) -gravity SouthEast -composite ^
  %DPATH%\db_docs.png

magick -size 1204x1204 canvas:transparent ^
  ( %IPATH%\Database.png -resize 1100x1100 ) -gravity NorthWest -composite ^
  -fill red -draw "rectangle 574,574,1204,1204" ^
  -transparent red ^
  ( %IPATH%\retail2.png -resize 600 ) -gravity SouthEast -composite ^
  %DPATH%\db_retail.png

magick %IPATH%\badgeOK.png ^
  -fill red -draw "rectangle 302,500,902,916" ^
  -transparent red ^
  -gravity Center ( %IPATH%\Database.png -resize 620x620 -geometry +0+80 ) -composite ^
  %DPATH%\secureDB.png
