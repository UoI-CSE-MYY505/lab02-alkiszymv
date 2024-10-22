
.data

array: .word 1, 0, 1, 12, 0, 1, 4

.text

    la a0, array
    li a1, 7    # unsigned
    li a2, 1
prog:
#-----------------------------
    add s0, zero, zero
loop:    
    beq  s0, a1, notFound
    slli t0, s0, 2
    add  t0, t0, a0
    lw   t1, 0(t0)
    beq  t1, a2, nFound
    addi s0, s0, 1
    j    loop
notFound:
    addi s0, zero, -1
nFound:
    add  s0, t1, zero
#-----------------------------
done:
    addi a7, zero, 10 
    ecall
