SUB x0, x0, x0
NOP
ADDi x4, x0, -65535
ADD x5, x2, x3
NOP
SVPC x9, 2
SVPC x10, 8
LD x6, x2
NOP
SUB x7, x6, x4
BRN x10
NOP
NOP
ADD x4, x6, x0
ADDi x2, x2, 1
NOP
SUB x7, x2, x5
BRZ x9
NOP
NOP
ADDi x4, x4, 0
WAI x20
NOP
NOP
ADDi x20, x20, 3
NOP
NOP
J x20
Addi x2, x0, 2
Addi x1, x0, 1
NOP
NOP
ST x2, x1
SUB x21, x4, x4
BRZ x20