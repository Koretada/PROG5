.global main
.text
main:
    MOV r5,#1
    ADD r5, r5, LSL #12
    SUB r5,r5,#1
    MOV r1,#11
    MOV r2,#33
    MOV r3,#138
    MOV r6,#126
    STMIA r5,{r1-r3,r6}
    ADD r5,#12
    LDMDA r5,{r8-r11}
    MOV r5,#136
    LDMDB r5,{r7-r10}
    MOV r5,#116
    LDMIB r5,{r8-r11}
    MOV r5,#120
    LDMIA r5,{r7-r10}
    
    swi 0x123456
.data
limite:
    .word 0x01234567
	.word 0x89abcdef
    .word 0x00112233
    .word 0x44556677
    .word 0x8899aabb
    .word 0xccddeeff
