SET IPATH=C:\Projects_src\resources\dxc-icons
SET DPATH=C:\Projects_src\resources\dxc-icons\generated

REM ****************
REM PROJECTS

magick -size 1204x1204 canvas:transparent ^
  ( %IPATH%\AbstractRandom.png       -resize 600x600 ) -gravity Center                    -composite ^
  ( %IPATH%\publicsector.png -resize 270x270 ) -gravity Center -geometry -460+0   -composite ^
  ( %IPATH%\publicsector.png      -resize 270x270 ) -gravity Center -geometry -250-460 -composite ^
  ( %IPATH%\publicsector.png -resize 270x270 ) -gravity Center -geometry +250-460 -composite ^
  ( %IPATH%\publicsector.png      -resize 270x270 ) -gravity Center -geometry +460+0   -composite ^
  ( %IPATH%\publicsector.png -resize 270x270 ) -gravity Center -geometry +250+460 -composite ^
  ( %IPATH%\publicsector.png      -resize 270x270 ) -gravity Center -geometry -250+460 -composite ^
  %DPATH%\CSRU.png
  
magick %IPATH%\LaptopPhone.png ^
  ( %IPATH%\AbstractRandom.png -resize 450x450 ) -gravity Center -geometry -150+50   -composite ^
  %DPATH%\OverSi.png  

magick -size 1204x1204 canvas:transparent ^
  ( %IPATH%\Person.png       -resize 600x600 ) -gravity Center                    -composite ^
  ( %IPATH%\publicsector.png -resize 270x270 ) -gravity Center -geometry -460+0   -composite ^
  ( %IPATH%\retail2.png      -resize 270x270 ) -gravity Center -geometry -250-460 -composite ^
  ( %IPATH%\publicsector.png -resize 270x270 ) -gravity Center -geometry +250-460 -composite ^
  ( %IPATH%\retail2.png      -resize 270x270 ) -gravity Center -geometry +460+0   -composite ^
  ( %IPATH%\publicsector.png -resize 270x270 ) -gravity Center -geometry +250+460 -composite ^
  ( %IPATH%\retail2.png      -resize 270x270 ) -gravity Center -geometry -250+460 -composite ^
  %DPATH%\MyData.png  

magick %IPATH%\DeviceUpdate.png ^
  -fill red -draw "rectangle 300,250,900,755" ^
  -transparent red ^
  -gravity Center ( %IPATH%\AbstractRandom.png -resize 550x550 ) -composite ^
  %DPATH%\CIP.png

magick -size 1204x1204 canvas:transparent ^
  -gravity SouthWest ( %IPATH%\AbstractRandom.png -resize 550x550 ) -composite ^
  -gravity SouthEast ( %IPATH%\AbstractRandom.png -resize 550x550 ) -composite ^
  -gravity NorthWest ( %IPATH%\AbstractRandom.png -resize 550x550 ) -composite ^
  -gravity NorthEast ( %IPATH%\AbstractRandom.png -resize 550x550 ) -composite ^
  %DPATH%\DI.png

REM ****************
REM MyData Icons

magick -size 1204x1204 canvas:transparent ^
  ( %IPATH%\Database.png -resize 666x800 ) -gravity East -geometry +30+0 -composite ^
  ( %IPATH%\generated\arrow.png -resize 450x450 ) -gravity West -geometry +30+0 -composite ^
  %DPATH%\data_sink.png
  
magick -size 1204x1204 canvas:transparent ^
  ( %IPATH%\Database.png -resize 666x800 ) -gravity East -geometry +30+0 -composite ^
  ( %IPATH%\generated\arrow.png -resize 450x450 -flop ) -gravity West -geometry +30+0 -composite ^
  %DPATH%\data_source.png    
  
magick %IPATH%\CircleExclamation.png ^
  -fill red -draw "rectangle 280,280,920,920" ^
  -transparent red ^
  -gravity Center ( %IPATH%\person.png -resize 600x600 ) -composite ^
  -stroke black -strokewidth 120 -draw "line 220,950, 950,250" ^
  %DPATH%\noPerson.png

magick %IPATH%\servicemanagement.png ^
  -fill red -draw "rectangle 2,920,1200,1204" ^
  -transparent red ^
  ( %IPATH%\publicsector.png -resize 270x270 ) -gravity South -geometry +0+0   -composite ^
  ( %IPATH%\publicsector.png -resize 270x270 ) -gravity South -geometry +449+0   -composite ^
  ( %IPATH%\publicsector.png -resize 270x270 ) -gravity South -geometry -449+0   -composite ^
  %DPATH%\MOU-CSRU.png