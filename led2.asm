      include "MC14500.inc"

      org 0000H

      orc RR         ; set RR to '1'
      oen RR         ; enable outputs       
        
      ld 7
      sto 0          ; turn on LED 0
      sto 1          ; turn on LED 1
      sto 2          ; turn on LED 2
      sto 3          ; turn on LED 3
      sto 4          ; turn on LED 4
      sto 5          ; turn on LED 5
      sto 6          ; turn on LED 6
      sto 7          ; turn on LED 7
      delay100ms
      stoc 7         ; turn off LED 7
      stoc 6         ; turn off LED 6
      stoc 5         ; turn off LED 5
      stoc 4         ; turn off LED 4
      stoc 3         ; turn off LED 3
      stoc 2         ; turn off LED 2
      stoc 1         ; turn off LED 1
      stoc 0         ; turn off LED 0
      jmp            ; reset and jump back to start (JMP output is wired to RST input)
            
      end