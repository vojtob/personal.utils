WinWaitActive("Kôš - Google Chrome");

For $i=1 To 100
	; pockaj kym sa da mazat
	While (PixelGetColor( 226, 261 ) <> 0xF0F0F0);
			Sleep(200)
	WEnd

	MouseClick("left", 233, 349);
	Sleep(500);
	MouseClick("left", 396, 319);
	Sleep(500);
	Send("{ENTER}");
	Sleep(10000);
Next;