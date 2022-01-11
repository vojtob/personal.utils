SET IPATH=C:\Projects_src\resources\dxc-icons
SET DPATH=C:\Projects_src\resources\dxc-icons\generated

magick -size 1204x1204 canvas:transparent ^
  -gravity SouthWest ( %IPATH%\person.png -resize 900x900 ) -composite ^
  -gravity NorthEast ( %IPATH%\publicsector.png -resize 400x400 ) -composite ^
  %DPATH%\role_uradnik_vs.png

magick -size 1204x1204 canvas:transparent ^
  -gravity SouthWest ( %IPATH%\person.png -resize 900x900 ) -composite ^
  -gravity NorthEast ( %IPATH%\retail2.png -resize 400x400 ) -composite ^
  %DPATH%\role_uradnik_biznis.png
  
magick -size 1204x1204 canvas:transparent ^
  -gravity South ( %IPATH%\person.png -resize 1100x1100 ) -composite ^
  -gravity NorthEast ( %IPATH%\settings.png -resize 400x400 ) -composite ^
  %DPATH%\role_spravca.png

  
magick -size 1204x1204 canvas:transparent ^
  -gravity SouthWest ( %IPATH%\person.png -resize 900x900 ) -composite ^
  -gravity NorthEast ( %IPATH%\businessprocessservices.png -resize 500x500 ) -geometry +50+50 -composite ^
  %DPATH%\personUpdate.png

magick -size 1204x1204 canvas:transparent ^
  -gravity SouthWest ( %IPATH%\person.png -resize 950x950 ) -composite ^
  -gravity NorthEast ( %IPATH%\Megaphone.png -resize 450x450 -flop ) -geometry +50+50 -composite ^
  %DPATH%\personNotify.png

magick -size 1204x1204 canvas:transparent ^
  -gravity Center ( %IPATH%\person.png -resize 1100x1100 ) -composite ^
  -fill white -draw "circle 600,840,600,1040" ^
  -transparent white ^
  -fill none -stroke black -strokewidth 5 -draw "circle 600,840,600,1040" ^
  -gravity Center ( %IPATH%\AbstractRandom.png -resize 270x270 ) -geometry +0+240 -composite ^
  %DPATH%\personIntegrate.png

  
