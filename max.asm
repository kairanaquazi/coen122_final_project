ADDi x4, x0, -65535
ADD  x5, x2, x3
NOP
ADDi x5, x5, 1
SVPC x9, 2
SVPC x10, 10
LD x6, x2
NOP
SUB  x7, x6, x4
BRN  x10
NOP
NOP
ADD  x4, x6, x0
ADDi x2, x2, 1
NOP
SUB  x7, x5, x2
BRN  x9
NOP
NOP
Addi x4, x4, 0
NOP
NOP
NOP