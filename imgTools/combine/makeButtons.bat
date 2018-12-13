convert bg/bkg2.png -gravity center -pointsize 8 -fill orange -draw "text 0,0 'SAP'" bSAP.gif
convert bg/bkg2.png -gravity center -pointsize 8 -fill blue -draw "text 0,0 'XML'" bXML.gif
composite -gravity center fg/return.gif bg/bkg2.png bReturn.gif
composite -gravity center fg/save.gif bg/bkg2.png bSave.gif
