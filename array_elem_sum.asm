PROGRAM"Sum elements from array"
DATA
V1 DB 0X9
V2 DB 0XF
V3 DB 0x12
V4 DB 0x10
V5 DB 1
V6 DB 3
V7 DB 8
V8 DB 100
COUNTER DB 8
SUM DB 0
ENDDATA
CODE
MOV AP, @V1
L1: MOV A, SUM
ADD A, [AP] ; ADD TO A CONTENT FROM ADDRESS AP
MOV SUM, A
ADD AP, 1
;Check if you have already completed calculation
MOV A, COUNTER
SUB A, 1
MOV COUNTER,A
JZ LEND
JMP L1
LEND:END
ENDPROGRAM