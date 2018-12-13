xcopy *.svg.png "C:\Projects\hp\RU\Resources\_img\model" /S /Y

xcopy EA\*.png "C:\Projects\hp\RU\Resources\_img\model\EA\" /S /Y

xcopy xmind\*.png "C:\Projects\hp\RU\Resources\_img\model\xmind\" /S /Y

FOR /R %%c in (*.svg.png) DO del "%%~fc"