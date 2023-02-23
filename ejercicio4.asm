.text
# a:  a0
# b:  a1
# Retorno:  a0

# Inicializar a en 10
addi a0, zero, 10

# Inicializar b en 4
addi a1, zero, 4

division:
  # Comprobar si b es mayor que a, si es así, retornar 0
  #bleu a0, a1, no_division # a < b
    blt a0, a1, no_division # si es menor a<b 
    beq a0, a1, no_division # a < b

  # Inicializar el registro t0 a 1
  addi t0, zero, 0
  # Inicializar el registro t1 al valor de b
  addi t1, a1, 0

div_while:
  # Comprobar si a < b, si es así, salir del bucle
  blt a0, a1, div_exit

  # Restar b a a
  sub a0, a0, t1
  # Incrementar t0 en 1
  addi t0, t0, 1
  # Volver a comprobar si a >= b
  jal div_while

div_exit:
  # Mover el resultado a t0
  addi a0, t0, 0
  # salir
  jal end

no_division:
  # Salir si b es mayor o igual que a
  addi a0, zero, 0
  jal end

end:
    jal end