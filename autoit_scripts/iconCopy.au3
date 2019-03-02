Func CopyIcon()
	Send("{ENTER}");
	Sleep(200);
	Send("{DOWN}");
	Sleep(200);

	#check name
	Send("{F2}");
	Sleep(200);
	$name = ControlGetText("","","");
	Send("{ESC}");
	Sleep(200);
	$name = StringLeft($name, 3);
	$dxcName = ($name == "dxc");
	If Not $dxcName Then
		Send("{DOWN}");
		Sleep(200);
	EndIf
	Send("{ENTER}");
	Sleep(200);
	Send("{DOWN}");
	Sleep(200);
	Send("{ENTER}");
	Sleep(200);
	Send("{DOWN}");
	Sleep(200);
	Send("{DOWN}");
	Sleep(200);
	Send("{ENTER}");
	Sleep(200);
	Send("{DOWN}");
	Sleep(200);
	Send("{ENTER}");
	Sleep(200);
	Send("^a")
	Sleep(200);
	Send("{F5}")
	Sleep(300);
	Send("{ENTER}");
	Sleep(1200);
	For $i=1 To 5
		Send("{LEFT}");
		Sleep(200);
	Next;
EndFunc

Sleep(1500);
For $i=1 To 17
	CopyIcon();
	Send("{DOWN}");
	Sleep(200);
Next;

