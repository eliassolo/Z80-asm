 device	zxspectrum48

 org $8000
 jr start
string:
 db "hello"

ROM_CLS =  $0DAF

start:
 im 1
 call ROM_CLS
 ld hl,string
 ld b, 5

loop:
 ld a,(hl)
 rst $10
 inc hl
 dec b 
 jr nz,loop
 ret
  
 SAVESNA "HelloWorld.sna",start

