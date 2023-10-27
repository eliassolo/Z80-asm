 device zxspectrum48
 org $8000               ; start of FreeRamMem
                         ;use the x button
start:
 ld bc,$FEFE             ; load into the bc the value to read SHWIFT Z X C V
ReadKeyboardLoop:
 in a,(c)                ;Read the buttons SWIFT Z X C V if the value x is pressed the second bit (0-7) of Acc will be turned on 000|00100
 bit 2,a                 ; if the second bit(0-7) is on then set the zero flag off else set the zero flag on 
 jp nz,ButtonRed         ; if the zero flag is !=0 NotZero go to the buttonRedMemAddrs
 ld a,$72                ; if the flag is 0 code Flow doesnt chabge , load into the acc the yellow color because z is Being Pressed
 jp Out                  ; jump into The Output_MemoryLocation
ButtonRed:
  ld a,$56               ; load the Red Color Value into the acc
Out:
 ld ($5800),a            ; load into the ScreenCollorAttrib_MemoryLocation the value of the accum
 jp ReadKeyboardLoop     ; Go to the ReadKeyboardLoop_MemoryLocation

 

 
 
 SAVESNA "KeyboardIn.sna",start 
