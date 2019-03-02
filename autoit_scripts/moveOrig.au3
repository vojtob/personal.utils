#include <MsgBoxConstants.au3>

WinWaitActive("Double Commander 0.7.3 beta build 6979M; 2016/07/02");

$pause = 200;
$pause2 = 500;

for $i=1 to 92
	Send("{ENTER}");
	Sleep($pause);
	Send("{DOWN}");
	Sleep($pause);
	Send("{F2}");
	Sleep($pause);
	Send("^C");
	Sleep($pause);
	Send("{ESC}");
	$dirName = ClipGet();
	$dirNames = StringSplit($dirName, "\");
	$dirName = $dirNames[$dirNames[0]];

	If (StringCompare("orig", $dirName) == 0) Then
		Send("{LEFT}");
		Sleep($pause2);
		Send("{F2}");
		Sleep($pause);
		Send("^C");
		Sleep($pause);
		Send("{ESC}");
		$dirName = ClipGet();
		$dirNames = StringSplit($dirName, "\");
		$dirName = $dirNames[$dirNames[0]];
		;MsgBox($MB_SYSTEMMODAL, "Title", $dirName);
		Send("{TAB}");
		Sleep($pause2);
		Send("{F7}");
		Sleep($pause);
		Send($dirName);
		Sleep($pause);
		Send("{ENTER}");
		Sleep($pause);
		Send("{ENTER}");
		Sleep($pause);
		Send("{TAB}");
		Sleep($pause);
		Send("{ENTER}");
		Sleep($pause);
		Send("{DOWN}{ENTER}");
		Sleep($pause2);
		Send("+{END}");
		Sleep($pause2);
		Send("{F6}");
		Sleep($pause2);
		Send("{ENTER}");
		Sleep($pause2);
		While (PixelGetColor( 775, 559 ) <> 0xFFFFFF);
				Sleep(200)
		WEnd
		Sleep($pause2);
		Send("{ENTER}");
		Sleep($pause2);
		Send("{DEL}");
		Sleep($pause2);
		Send("{ENTER}");
		Sleep($pause2);
		Sleep($pause2);
		Send("{LEFT}");
		Sleep($pause);
		Send("{TAB}");
		Sleep($pause2);
		Send("{LEFT}");
		Sleep($pause);
		Send("{TAB}");
		Sleep($pause2);
	Else
		Send("{LEFT}");
		Sleep($pause2);
	EndIf
	Send("{DOWN}");
	Sleep($pause);
Next;

