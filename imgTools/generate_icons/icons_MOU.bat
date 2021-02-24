SET IPATH=C:\Projects_src\resources\dxc-icons
SET DPATH=C:\Projects_src\resources\dxc-icons\generated

magick -size 1204x1204 canvas:transparent ^
  -gravity SouthWest ( %IPATH%\UserDocument.png -resize 900x900 ) -composite ^
  -gravity NorthEast ( %IPATH%\AbstractRandom.png -resize 400x400 ) -composite ^
  %DPATH%\integration-people.png
  
magick %IPATH%\DeviceUpdate.png ^
  -fill red -draw "rectangle 300,250,900,755" ^
  -transparent red ^
  -gravity Center ( %IPATH%\AbstractRandom.png -resize 550x550 ) -composite ^
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
  ( %IPATH%\Database.png -resize 666x800 ) -gravity East -geometry +30+0 -composite ^
  ( %IPATH%\generated\arrow.png -resize 450x450 ) -gravity West -geometry +30+0 -composite ^
  %DPATH%\data_sink.png
  
magick -size 1204x1204 canvas:transparent ^
  ( %IPATH%\Database.png -resize 666x800 ) -gravity East -geometry +30+0 -composite ^
  ( %IPATH%\generated\arrow.png -resize 450x450 -flop ) -gravity West -geometry +30+0 -composite ^
  %DPATH%\data_source.png    
  
magick -size 1204x1204 canvas:transparent ^
  ( %IPATH%\Person.png       -resize 600x600 ) -gravity Center                    -composite ^
  ( %IPATH%\publicsector.png -resize 270x270 ) -gravity Center -geometry -460+0   -composite ^
  ( %IPATH%\retail2.png      -resize 270x270 ) -gravity Center -geometry -250-460 -composite ^
  ( %IPATH%\publicsector.png -resize 270x270 ) -gravity Center -geometry +250-460 -composite ^
  ( %IPATH%\retail2.png      -resize 270x270 ) -gravity Center -geometry +460+0   -composite ^
  ( %IPATH%\publicsector.png -resize 270x270 ) -gravity Center -geometry +250+460 -composite ^
  ( %IPATH%\retail2.png      -resize 270x270 ) -gravity Center -geometry -250+460 -composite ^
  %DPATH%\MyData.png  

magick -size 1204x1204 canvas:transparent ^
  -gravity SouthWest ( %IPATH%\server.png -resize 800x800 ) -composite ^
  -gravity NorthEast ( %IPATH%\AbstractRandom.png -resize 400x400 ) -composite ^
  %DPATH%\IS_CSRU.png

