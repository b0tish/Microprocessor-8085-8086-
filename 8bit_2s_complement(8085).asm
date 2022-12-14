mvi c, 00h
lda 2051h
mov b, a
lda 2050h
cma
inr a
add b
jc go
cma
inr a
jmp last

go: inr c

last: sta 2052h
mov a, c
sta 2053h

hlt