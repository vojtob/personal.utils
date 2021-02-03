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