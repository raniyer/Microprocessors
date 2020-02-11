ldr r0,=DATA1
mov r1,#0
loop:
ldrb r2,[r0]
cmp r2,#0x00
BEQ STOP
ADD r0,r0,#1
ADD r1,r1,#1
    B loop
STOP:
SWI 0x11

DATA1: .asciz"HELLO WORLD"
