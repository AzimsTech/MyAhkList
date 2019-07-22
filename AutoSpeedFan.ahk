Run, "C:\Program Files (x86)\SpeedFan\speedfan.exe"
Sleep, 10000 
WinActivate, SpeedFan 4.52 ahk_class TForm1
Send, {Tab}{Tab}{5}{0}
Send !{f4} ; Simulates the keypress alt+f4
return ; Finished



