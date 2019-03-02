#include <MsgBoxConstants.au3>

WinWaitActive("Zoznam spravcov doplneny v2016-04-21 VB.xlsx - Excel");

; copy znacka
Send("{F2}");
Sleep(100);
Send("{END}");
Sleep(100);
Send("+{HOME}^c");
Sleep(100);
Send("{ENTER}{UP}");
Sleep(100);
$znacka = ClipGet();

; copy names
Send("{RIGHT}");
Sleep(100);
Send("{F2}");
Sleep(100);
Send("{END}");
Sleep(100);
Send("+{HOME}^x");
Sleep(100);
Send("{ENTER}{UP}");
Sleep(100);

$orgiText = ClipGet();
$spravcovia = StringSplit(ClipGet(), ",");
$pocetSpravcov = $spravcovia[0] / 2;

; create empty rows
Send("+{SPACE}");
Sleep(100);
For $i = 2 To $pocetSpravcov
	Send("^{NUMPADADD}");
	Sleep(100);
Next
Send("{HOME}");
For $i = 2 To $pocetSpravcov
	Send("{DOWN}");
	Sleep(100);
Next

; copy znacka spravcu
Send("^c");
Sleep(100);
For $i = 2 To $pocetSpravcov
	Send("{UP}");
	Sleep(100);
	Send("^v");
	Sleep(100);
Next
For $i = 2 To $pocetSpravcov
	Send("{DOWN}");
	Sleep(100);
Next
Send("{ESC}");
Sleep(100);

; create names
Send("{RIGHT}");
Sleep(100);
For $i = 1 To $pocetSpravcov
	Send("{F2}");
	Sleep(100);
 	Send($spravcovia[2*$i-1]);
	Sleep(100);
	Send(", ");
	Sleep(100);
 	Send($spravcovia[2*$i]);
	Send("{ENTER}{UP}{UP}");
	Sleep(100);
Next

For $i = 0 To $pocetSpravcov
	Send("{DOWN}");
	Sleep(50);
Next
Send("{LEFT}");
