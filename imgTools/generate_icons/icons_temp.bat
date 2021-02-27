SET IPATH=C:\Projects_src\resources\dxc-icons
SET DPATH=C:\Projects_src\resources\dxc-icons\generated

magick %IPATH%\LaptopPhone.png ^
  ( %IPATH%\AbstractRandom.png -resize 450x450 ) -gravity Center -geometry -150+50   -composite ^
  %DPATH%\OverSi.png  

