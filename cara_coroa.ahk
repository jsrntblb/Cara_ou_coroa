#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#SingleInstance force

SetTitleMatchMode, 2

Random, rand, 0, 2

if (rand = 0){
SoundPlay, %A_ScriptDir%\coin_flip.wmv, 1
SoundPlay, %A_ScriptDir%\down.wav, 
MsgBox, 4096, Cara, Cara. Você perdeu.
}else{
SoundPlay, %A_ScriptDir%\coin_flip.wmv, 1
SoundPlay, %A_ScriptDir%\up.wav, 
FileAppend,, %A_ScriptDir%\cara_coroa\%A_Now%.txt
MsgBox, 4096, Coroa, Coroa. Você GANHOU. Parabéns!
}