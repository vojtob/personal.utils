magick convert Camera.png -alpha extract  Camera_mask.png
magick convert Camera_mask.png -background black -splice 0x301 camera_mask2.png
magick convert Camera.png -background black -splice 0x301 camera2.png
magick convert Camera2.png camera_mask2.png -alpha Off -compose CopyOpacity -composite Camera3.png

REM magick convert  Camera.png -splice 0x301 camera2.png