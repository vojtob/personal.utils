REM combine OK and badge to create OKbadge. From it create notary
magick composite -geometry +0+100 -gravity Center ( OK.png -resize 600x600 ) badge.png badgeOK.png
magick -gravity NorthEast person.png ( badgeOK.png -resize 600x600 ) -composite notar.png



magick znak.jpg -threshold 20% znakBW.png

magick znakBW.png -morphology Erode Octagon:15 znakBW_thick.png

magick znakBW_thick.png -fuzz 10% -transparent white znakBW_transparent.png

magick -gravity Center circle.png ( znakBW_transparent.png -resize 600x600 ) -composite peciatka.png

magick -gravity NorthEast person.png ( peciatka.png -resize 600x600 ) -composite notar3.png






magick znakSimple.png -fuzz 10% -transparent white znakSimple_transparent.png

magick -gravity Center circle.png ( znakSimple_transparent.png -resize 600x600 ) -composite peciatka.png

magick -gravity NorthEast person.png ( peciatka.png -resize 700x700 ) -composite notar3.png



magick znakObrys.png -morphology Erode Octagon:30 znakObrys_thick.png

magick znakObrys_thick.png -fuzz 10% -transparent white znakObrys_thick_transparent.png

magick -gravity Center circle.png ( znakObrys_thick_transparent.png -resize 600x600 ) -composite peciatka.png

magick -gravity NorthEast person.png ( peciatka.png -resize 600x600 ) -composite notar3.png




magick kriz.png -morphology Erode Octagon:30 kriz_thick.png

magick kriz_thick.png -fuzz 10% -transparent white kriz_transparent.png

magick -gravity Center circle.png ( kriz_transparent_proc.png -resize 1000x1000 ) -composite peciatka.png

magick -gravity Center circle.png ( kriz_transparent.png -resize 600x600 ) -composite peciatka.png

magick -gravity NorthEast person.png ( peciatka.png -resize 600x600 ) -composite notar3.png


