addi s0 zero 6 #asignamos valor 6 al registro 0
add s1 zero s0 #asignamos el valor de s0
addi s2 zero 6 #asignamos valor 6 al registro 2
addi s3 zero 1 #asignamos valor 1 al registro 3
add s4 zero s0 #asignamos valor 1 al registro 4


potencia:
    slt s5 s0 s3 #si s0 es menor a s3, asigna 1 a s5, si no asigna 0
    beq s5 s3 return #si s5 es igusl a s3, brinca return
    mul s1 s2 s1 #asigna a s1 el resultado de s2 por s1
    sub s4 s4 s3 #asigna a s4 el resultado de restar s4 menos s3
    bne s4 s3 potencia #si s4 es igusl a s3, brinca potencia
    jal zero end

return:
    addi s1 zero 1 #asigna 1 a1 s1 

end: 
    jal end