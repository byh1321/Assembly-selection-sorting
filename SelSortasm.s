.global selection
.arch armv7-a
.type selection, %function
selection: push {r2,r3,r5,r6,r7,r8,r9,r10,r11}   
mov     r6,r1
sub     r6,r6,#1
mov     r5,#0
oloop:  cmp     r5,r6
beq     exito
add     r3,r5,#1
mov     r2,r0
mov		r9,r5
iloop:  cmp     r3,r6
bhi     exiti
ldr		r11,[r2,r9,lsl #2]
ldr     r10,[r2,r3,lsl #2]
cmp     r11,r10
movhi   r9,r3
add     r3,r3,#1
b       iloop
exiti:  add     r5,r5,#1
sub		r11,r5,#1
cmp		r9,r11
beq		oloop
ldr		r7,[r2,r11,lsl #2]
add		r11,r2,r11,lsl #2
add		r10,r2,r9,lsl #2
ldr		r8,[r10]
stm		r11,{r8}
stm 	r10,{r7}
b       oloop
exito:  
pop {r2,r3,r5,r6,r7,r8,r9,r10,r11}
	mov r0,#1
	bx      lr
