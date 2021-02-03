SET IPATH=C:\Projects_src\resources\dxc-icons
SET DPATH=C:\Projects_src\resources\dxc-icons\generated

magick -size 1204x1204 canvas:transparent ^
  -gravity SouthWest ( %IPATH%\server.png -resize 800x800 ) -composite ^
  -gravity NorthEast ( %IPATH%\AbstractRandom.png -resize 400x400 ) -composite ^
  %DPATH%\integration-server.png

magick -size 1204x1204 canvas:transparent ^
  -gravity SouthWest ( %IPATH%\UserDocument.png -resize 900x900 ) -composite ^
  -gravity NorthEast ( %IPATH%\AbstractRandom.png -resize 400x400 ) -composite ^
  %DPATH%\integration-people.png
  
magick ^
  -gravity Center %IPATH%\businessprocessservices.png ( %IPATH%\AbstractRandom.png -resize 400x400 ) -composite ^
  %DPATH%\integration-update.png

magick -size 1204x1204 canvas:transparent ^
  -gravity SouthWest ( %IPATH%\AbstractRandom.png -resize 550x550 ) -composite ^
  -gravity SouthEast ( %IPATH%\AbstractRandom.png -resize 550x550 ) -composite ^
  -gravity NorthWest ( %IPATH%\AbstractRandom.png -resize 550x550 ) -composite ^
  -gravity NorthEast ( %IPATH%\AbstractRandom.png -resize 550x550 ) -composite ^
  %DPATH%\integration-multi.png


magick %IPATH%\CircleExclamation.png ^
  -fill red -draw "rectangle 280,280,920,920" ^
  -transparent red ^
  -gravity Center ( %IPATH%\person.png -resize 600x600 ) -composite ^
  -stroke black -strokewidth 120 -draw "line 220,950, 950,250" ^
  %DPATH%\noPerson.png


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


magick -size 1204x1204 canvas:transparent ^
  -gravity SouthWest ( %IPATH%\server.png -resize 800x800 ) -composite ^
  -gravity NorthEast ( %IPATH%\publicsector.png -resize 400x400 ) -composite ^
  %DPATH%\isvs.png

magick -size 1204x1204 canvas:transparent ^
  -gravity SouthWest ( %IPATH%\server.png -resize 800x800 ) -composite ^
  -gravity NorthEast ( %IPATH%\retail2.png -resize 400x400 ) -composite ^
  %DPATH%\isb.png


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

  magick -size 700x700 canvas:transparent ^
  -gravity Center ( %IPATH%\reinsurance.png -crop 300x550!-150+124 ) -composite ^
  -fill red -draw "rectangle 200,550,270,626" ^
  -transparent red ^
  -rotate "-90" ^
  -flip ^
  -resize 1204 ^
  %DPATH%\arrow.png

magick %IPATH%\lifeinsurance.png ^
  -fill black -draw "circle 602,951,602,702" ^
  %DPATH%\people_secure.png