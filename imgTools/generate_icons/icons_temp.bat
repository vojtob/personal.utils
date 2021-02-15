SET IPATH=C:\Projects_src\resources\dxc-icons
SET DPATH=C:\Projects_src\resources\dxc-icons\generated

magick -size 1204x1204 canvas:transparent ^
  ( %IPATH%\Person.png       -resize 500x500 ) -gravity Center                    -composite ^
  ( %IPATH%\publicsector.png -resize 270x270 ) -gravity Center -geometry -460+0   -composite ^
  ( %IPATH%\retail2.png      -resize 270x270 ) -gravity Center -geometry -250-354 -composite ^
  ( %IPATH%\publicsector.png -resize 270x270 ) -gravity Center -geometry +250-354 -composite ^
  ( %IPATH%\retail2.png      -resize 270x270 ) -gravity Center -geometry +460+0   -composite ^
  ( %IPATH%\publicsector.png -resize 270x270 ) -gravity Center -geometry +250+400 -composite ^
  ( %IPATH%\retail2.png      -resize 270x270 ) -gravity Center -geometry -250+400 -composite ^
  %DPATH%\MyData.png