// TESTING BRN: THIS SHOULD RESULT IN 4
Addi x9,x0,2 // x9 is 2
SVPC x7, 4
SUB x3, x3, x1
BRN x7
Addi x9,x0,4 // x9 is 4
Addi x9,x9,0 // get x9 value
