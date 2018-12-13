xcopy *.uxf.png "..\..\Resources\_img\model\Domain" /S /Y
FOR /R %%c in (*.uxf.png) DO del "%%~fc"