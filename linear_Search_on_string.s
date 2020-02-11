.text
LDR r0,=A;
LDR r1,=B;
LDRB r2 ,[r0]
LDRB r3,[r1]
mov r5, #0
mov r6, #11

loop:
			cmp r6, #0
			beq end2
			cmp r2,#0
			beq end
			LDRB r2 ,[r0],#1
			add r5,r5,#1
			subs r6,r6,#1

end2:
mov r5,#-1
			
end:
SWI 0x11
.data
A: .asciz "HELLO WORLD"
B: .asciz "Z"

