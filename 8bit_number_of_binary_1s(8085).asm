mvi b, 00h
lda 2050h
mvi c, 08h
next: ral
jnc go
inr b

go:dcr c
jnz next
mov a, b
sta 2051h
hlt
