# stack_int.rb

def math_cmd(stack, register, op)
  stack_val = stack.pop
  case op
  when "+" then register + stack_val
  when "-" then register - stack_val
  when "*" then register * stack_val
  when "/" then register / stack_val
  when "%" then register % stack_val
  else 0
  end
end

def minilang(cmd)
  register = 0
  stack = []

  cmd_list = cmd.split(' ')

  cmd_list.each do |cmd|
    case cmd
    when "PUSH" then stack << register
    when "ADD" then register = math_cmd(stack, register, "+")
    when "SUB" then register = math_cmd(stack, register, "-")
    when "MULT" then register = math_cmd(stack, register, "*")
    when "DIV" then register = math_cmd(stack, register, "/")
    when "MOD" then register = math_cmd(stack, register, "%")
    when "POP" then register = stack.pop
    when "PRINT" then puts register
    else register = cmd.to_i
    end
  end
end

# minilang('PRINT')
# minilang('5 PUSH 3 MULT PRINT')
# minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
# minilang('5 PUSH POP PRINT')
# minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
# minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
# minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
# minilang('-3 PUSH 5 SUB PRINT')
# minilang('6 PUSH')

(3 + (4 * 5) - 7) / (5 % 3)
# Further Exploration Bonus
minilang('3 PUSH 5 MOD PUSH 7 PUSH 4 PUSH 5 MULT PUSH 3 ADD SUB DIV PRINT')
