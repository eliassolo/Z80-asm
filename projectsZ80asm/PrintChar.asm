 device zxspectrum48
 
 org $8000
 ld a,2 ; upper screen
 call 5633 ; open channel
start 
 ld de,string ; address of string
 ld bc,length-string ; length of string to print
 call 8252 ; print our string
 ld a,13 ;ld a the code for a new line
 rst $10 ;rst $10 print the char onto the screen
 jp start ; repeat until screen is full
string defb 'hello world'

length equ $
 
 SAVESNA "PrintChar.sna",start