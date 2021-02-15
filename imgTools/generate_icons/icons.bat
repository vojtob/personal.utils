SET IPATH=C:\Projects_src\resources\dxc-icons
SET DPATH=C:\Projects_src\resources\dxc-icons\generated

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
  
magick -size 1204x1204 canvas:transparent ^
  ( %IPATH%\Database.png -resize 666x800 ) -gravity East -geometry +30+0 -composite ^
  ( %IPATH%\generated\arrow.png -resize 450x450 ) -gravity West -geometry +30+0 -composite ^
  %DPATH%\data_sink.png
  
magick -size 1204x1204 canvas:transparent ^
  ( %IPATH%\Database.png -resize 666x800 ) -gravity East -geometry +30+0 -composite ^
  ( %IPATH%\generated\arrow.png -resize 450x450 -flop ) -gravity West -geometry +30+0 -composite ^
  %DPATH%\data_source.png    
  
magick -size 1204x1204 canvas:transparent ^
  ( %IPATH%\Person.png       -resize 500x500 ) -gravity Center                    -composite ^
  ( %IPATH%\publicsector.png -resize 270x270 ) -gravity Center -geometry -460+0   -composite ^
  ( %IPATH%\retail2.png      -resize 270x270 ) -gravity Center -geometry -250-354 -composite ^
  ( %IPATH%\publicsector.png -resize 270x270 ) -gravity Center -geometry +250-354 -composite ^
  ( %IPATH%\retail2.png      -resize 270x270 ) -gravity Center -geometry +460+0   -composite ^
  ( %IPATH%\publicsector.png -resize 270x270 ) -gravity Center -geometry +250+400 -composite ^
  ( %IPATH%\retail2.png      -resize 270x270 ) -gravity Center -geometry -250+400 -composite ^
  %DPATH%\MyData.png  
