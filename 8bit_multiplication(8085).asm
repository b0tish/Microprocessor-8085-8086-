; Multiplying two 8bit might give 16bit result
jmp start

;code
start: nop

lda 0000h   	; multiplier
mov b, a
lda 0010h   	; multiplicand
mov c, a

mvi a, 00h	    ; empty accumulator
mvi d, 00h	    ; empty register to hold carry

adder: add b	; add multiplier
jnc nocarry		; if no carry, go to "nocarry"
inr d

nocarry: dcr c	; decrease multiplicand by 1
jnz adder		; if multiplcand != 0, goto "adder"
				; Ex: In 4 * 3, 4 will get added 3 tijme
sta 0030h		; Store the sum
mov a, d		; Carry
sta 0031h		; Store the carry

HLT