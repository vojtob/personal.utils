SET IPATH=C:\Projects_src\resources\dxc-icons
SET DPATH=C:\Projects_src\resources\dxc-icons\generated

magick -size 1204x1204 canvas:transparent ^
  ( %IPATH%\Database.png -resize 666x800 ) -gravity East -geometry +30+0 -composite ^
  ( %IPATH%\generated\arrow.png -resize 450x450 ) -gravity West -geometry +30+0 -composite ^
  %DPATH%\data_sink.png
  
magick -size 1204x1204 canvas:transparent ^
  ( %IPATH%\Database.png -resize 666x800 ) -gravity East -geometry +30+0 -composite ^
  ( %IPATH%\generated\arrow.png -resize 450x450 -flop ) -gravity West -geometry +30+0 -composite ^
  %DPATH%\data_source.png  