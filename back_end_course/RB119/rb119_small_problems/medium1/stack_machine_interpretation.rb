=begin   
 problem - 
create a method that implements a miniature stack and 
register based programming lanuage with following command
 
- n - place a value 'n' in the register(not modify)
- PUSH - push the register value on the stack (leave value in register)
- ADD - pops a value from the stack and adds it to the register value
          (store the result in register)
- SUB - popos a value from the stack and sustract it from the 
          register value-store result in register

rules : 
- each operation operates on a register - which is current value
- the register is not part part of the stack. 
- operation that require two values pop the topmost items of stack

=end 



minilang('PRINT')
# 0

# minilang('5 PUSH 3 MULT PRINT')
# # 15

# minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
# # 5
# # 3
# # 8

# minilang('5 PUSH POP PRINT')
# # 5

# minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
# # 5
# # 10
# # 4
# # 7

# minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
# # 6

# minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
# # 12

# minilang('-3 PUSH 5 SUB PRINT')
# # 8

# minilang('6 PUSH')
# (nothing printed; no PRINT commands)


def minilang
  


end