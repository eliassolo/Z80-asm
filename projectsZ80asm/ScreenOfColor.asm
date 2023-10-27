 device zxspectrum48
 org $8000
 

start
 ld a,$d6
 ld hl,$5800

loop:
 ld (hl),a
 dec a
 inc hl
 ld b ,2
 dec b
 jp nz,loop
 ret 

 SAVESNA "ScreenOfColor.sna",start
