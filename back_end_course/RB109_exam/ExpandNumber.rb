def expanded_form(num)
  #   if num <= 0
  #     p 'Invalid number'
  #   else
  num_arr = num.to_s.split('')
  index = num_arr.length - 1
  increment = 1
  expand_num = ''
  loop do
    if num_arr[index] != '0'
      expand_num = if expand_num != ''
                     (num_arr[index].to_i * increment).to_s + ' + ' + expand_num
                   else
                     (num_arr[index].to_i * increment).to_s
                   end
    end
    index -= 1
    increment *= 10
    break if index < 0
  end
  expand_num
  # end
end

p expanded_form(12) #== '10 + 2'
p expanded_form(42) == '40 + 2'
p expanded_form(70304) == '70000 + 300 + 4'
