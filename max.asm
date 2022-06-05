NOP
NOP
SUB x0, x0, x0
ADDi x4, x0, -65535
ADD x5, x2, x3
SVPC x9, 2
SVPC x10, 8
LD x6, x2
SUB x7, x6, x4
BRN x10
ADD x4, x6, x0
ADDi x2, x2, 1
SUB x7, x2, x5
BRZ x9
ADDi x4, x4, 0
