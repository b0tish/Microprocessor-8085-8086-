; Sum of even numbers in an array
; Data from 6000h to 6009h

mvi b, 00h  ; holds carry
mvi c, 10h	; loop counter
mvi e, 00h  ; holds sum
lxi h, 6000h

iter: mov d, m
mov a, d
ani 01h
jnz go
mov a, e
add d
jnc nocarry
inr b

nocarry: mov e, a

go: inx h
dcr c
jnz iter

mov a, e	; sum
sta 6011h
mov a, b	; carry
sta 6010h

hlt