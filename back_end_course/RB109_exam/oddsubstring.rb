def solve(numstr)
  x = numstr.length - 1
  odd_num_couunt = 0
  for i in 0..x do
    for j in i..x do
      odd_num_couunt += 1 if numstr[i..j].to_i.odd?
      j += 1
    end
    i += 1
  end
  odd_num_couunt
end

p solve('1341')
p solve("1357") #== 10
p solve("13471") == 12
p solve("134721") == 13
p solve("1347231") == 20
p solve("13472315") #== 28
