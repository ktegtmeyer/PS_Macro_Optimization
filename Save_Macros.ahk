#Warn  ; Enable warnings to assist with detecting common errors.
#SingleInstance Force  ;only allow 1 instance

SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
SetTitleMatchMode, 2  ;  not strict title search for windows


; SAVE MACROS TO FOLDER
; save 1 macro first
; pick folder
; resize macro window
; place mouse cursor on downscroll arrow in pscribe

\::         ;\ initiates script    

loop

{
	WinActivate PowerScribe			
	WinWaitActive,PowerScribe
	send, {click}    
	sleep, 150
	send, {down}
	sleep, 150
	send, {Enter}
	sleep, 100
	WinActivate PowerScribe			
	WinWaitActive,PowerScribe
	send, !F
	sleep, 100
	send, A
	sleep, 100
	send, {Enter}

IfWinExist, Confirm Save As
	{
	sleep, 200
	send, {Enter}
	sleep, 200
	send, {Escape}
	Return
	}

Else
	{
	sleep, 100
	WinActivate PowerScribe			
	WinWaitActive,PowerScribe
	sleep, 100
	}

}


; UPLOAD MACROS
; go to "open file" in pscribe autotext editor
; place mouse cursor on file you want saved
; push ` key (next to 1)


[::        ; [initiates script to save individual macros   

{
	send, {click}    
	sleep, 100
	send, {Enter}
	WinActivate PowerScribe			
	WinWaitActive,PowerScribe
	sleep, 50
	send, ^s
	sleep, 50
	WinActivate PowerScribe			
	WinWaitActive,PowerScribe
	send, !F
	sleep, 100
	send, {Down 3}
	sleep, 100
	send, {Enter}
	return
}


]::        ; ]initiates script to open macros

{
	send, {click}    
	sleep, 100
	send, {Enter}
	sleep, 100
	send, !F
	sleep, 100
	send, A
	sleep, 100
	send, {Enter}
	return
}

