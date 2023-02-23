.text
# Opciones en el selector
addi t4,zero,1 # opcion 0
addi t5,zero,2 # opcion 1
addi t6,zero,3 # opcion 2

main:
    
  #Selector de operacion
   addi t0, zero, 3  # selector = ? AQUI SE CAMBIA ENTRE 0 1 2 Y 3
  # Configuraci?n de registros
  
  addi s1, zero, 5  # a = 5 (s1)
  addi s2, zero, 3  # b = 3 (s2)
  addi s3, zero, 0  # c = 0 (s3)

 # Comparador de selector
  beq t0, t4, add        # si selector = 1
  beq t0, t5, sub        # si selector = 2
  beq t0, t6, mul        # si selector = 3
  beq t0, zero, default  # si selector = 0

add:
    # Operacion de suma
    add s3, s1, s2         # c = a + b
    jal end

sub:
    # Operacion de resta
    sub s3, s1, s2         # c = a - b
    jal end

mul:
    # Operacion de multiplicacion
    addi s10, zero, 0   # contador de vueltas en 0
vueltamul:
    bge s10, s2, end   # si contador >= b, entonces end
    add s3, s3, s1    # c = a + c
    addi s10, s10, 1    # suma uno al contador
    jal vueltamul

default:
    # Operacion andBitwise
    and s3, s1, s2         # c = a & b
    jal end

end:
    jal end