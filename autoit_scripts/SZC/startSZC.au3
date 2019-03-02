; start sql server configuration manager
Run("C:\Windows\System32\mmc.exe /32 C:\Windows\system32\SQLServerManager10.msc", "", @SW_MAXIMIZE);
WinWaitActive("Sql Server Configuration Manager");
; pockaj kym sa objavia services
While (PixelGetColor( 281, 147 ) <> 0xFF0000);	
		Sleep(200)
WEnd
; start service
MouseClick("left", 319, 109);
Sleep(500);
MouseClick("left", 182, 53);
While (PixelGetColor( 281, 109 ) <> 0x008000);	
		Sleep(200)
WEnd
; start service
MouseClick("left", 314, 145);
Sleep(500);
MouseClick("left", 182, 53);
While (PixelGetColor( 281, 147 ) <> 0x008000);	
		Sleep(200)
WEnd
; close sql server configuration manager
WinClose("Sql Server Configuration Manager");

; start eclipse
Run("C:\Program Files\eclipse\eclipse.exe", "", @SW_MAXIMIZE);
While (PixelGetColor( 14, 3 ) <> 0x8E799D);	
		Sleep(200)
WEnd
;pockaj 2 min kym sa spameta eclipse
Sleep(120000);
; start server
MouseClick("left", 443, 723);
Sleep(1000);
MouseClick("left", 485, 772);
Sleep(1000);
MouseClick("left", 1171, 746);
Sleep(2000);
While (PixelGetColor( 1260, 976 ) = 0xF5D5C6);	
		Sleep(200)
WEnd

; start chrome and application
Run("C:\Users\balintv\AppData\Local\Google\Chrome\Application\chrome.exe", "", @SW_MAXIMIZE);
Sleep(10000);
MouseClick("left", 135, 108);

; start xmind
Run("C:\prg\xmind-portable-3.2.1\XMind_Windows\xmind.exe", "", @SW_MAXIMIZE);
WinWaitActive("XMind - Workbook 1");
MouseClick("left", 11, 30);
Sleep(1500);
MouseClick("left", 88, 449);
Sleep(5000);
MouseClick("left", 103, 86);

; start enterprise architect
Run("C:\Program Files\Sparx Systems\EA\EA.exe", "", @SW_MAXIMIZE);
WinWaitActive("No current project - EA");
Sleep(2000);
MouseClick("left", 318, 281);