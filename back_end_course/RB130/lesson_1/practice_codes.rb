=begin  
# binding variable to a block and a proc
var_1 = 'first variable'

def method_1
	puts "method 1 "
end

[1].each do |_|
	puts var_1
	method_1
	puts var_2
	method_2
end # this will print var_1 and method_1 , i.e binding variable for this 
     # block is var_1 and method_1

var_2 = 'second variable'

def method_2
	puts "method 2 "
end
 

# how to call a block

def some_method(str) # block 
  yield
  call # this is not working 
  puts(str)
end

some_method('Hello'){puts "I'm Udeshika"}

def another_method(&block) # proc 
  yield # this is also working 
  #block.call  # proc call
end

another_method{puts 'world'}


def calling_proc(list)
	list.call
end

var_1 = 'first variable'

def method_1
	puts "method 1 "
end

variable = Proc.new do
	puts var_1
	method_1
	#puts var_2
	method_2
end 

var_2 = 'second variable'

def method_2
	puts "method 2 "
end

calling_proc(variable)


	
def sequence
  counter = 0
  Proc.new{counter += 1}
end

s1 = sequence
p s1.call # 1 
p s1.call # 2
p s1.call # 3

s2 = sequence
p s2.call # 1 
p s1.call # 4
p s2.call # 2


def missing(arr)
  missing_num = []
  
  (arr[0]..arr[-1]).to_a.each do |num|
    missing_num << num unless arr.include?(num)
  end
  missing_num
end

p missing([-3, -2, 1, 5]) == [-1, 0, 2, 3, 4]
p missing([1, 2, 3, 4]) == []
p missing([1, 5]) == [2, 3, 4]
p missing([6]) == []


def divisors(int)
  div_arr = []
  (1..int).to_a.each do |num|
    div_arr << num if int%num == 0
  end
  div_arr
end

p divisors(1) == [1]
p divisors(7) == [1, 7]
p divisors(12) == [1, 2, 3, 4, 6, 12]
p divisors(98) == [1, 2, 7, 14, 49, 98]
p divisors(99400891) == [1, 9967, 9973, 99400891] # may take a minute


def find_letter(char)
  alphabet = ('a'..'z').to_a
  index = 0
  alphabet.each_with_index do |ele,i|
    index = i if ele == char
  end

  if index < 13 
    alphabet[index+13] 
  else 
    alphabet[index-13]
  end
end

def encryp_str(str)
  encrypted = ''
  str.each_char do |char|
    if char == ' '
      encrypted << char
    else 
    encrypted << find_letter(char.downcase)
    end
  end
  encrypted
end

# p find_letter('a')
# p find_letter('o')


 p encryp_str('Nqn Ybirynpr')
 p encryp_str('Tenpr Ubccre')
# Nqryr Tbyqfgvar
# Nyna Ghevat
# Puneyrf Onoontr
# Noqhyynu Zhunzznq ova Zhfn ny-Xujnevmzv
# Wbua Ngnanfbss
# Ybvf Unvog
# Pynhqr Funaaba
# Fgrir Wbof
# Ovyy Tngrf
# Gvz Orearef-Yrr
# Fgrir Jbmavnx
# Xbaenq Mhfr
# Fve Nagbal Ubner
# Zneiva Zvafxl
# Lhxvuveb Zngfhzbgb
# Unllvz Fybavzfxv
# Tregehqr Oynapu
=end 

# def any?(arr)
#   arr.each {|ele| return true if yield(ele)}
#   false 
# end

# p any?([1, 3, 5, 6]) { |value| value.even? } == true
# p any?([1, 3, 5, 7]) { |value| value.even? } == false
# p any?([2, 4, 6, 8]) { |value| value.odd? } == false
# p any?([1, 3, 5, 7]) { |value| value % 5 == 0 } == true
# p any?([1, 3, 5, 7]) { |value| true } == true
# p any?([1, 3, 5, 7]) { |value| false } == false
# p any?([]) { |value| true } == false
# p any?({'a'=> 2, 'b'=> 3, 'c'=> 4}){|k,v| v > 3} == true

 
p ["hello", "world"].each(&:upcase!)              # => ["HELLO", "WORLD"]
p [1, 2, 3, 4, 5].select(&:odd?)                  # => [1, 3, 5]
p [1, 2, 3, 4, 5].select(&:odd?).any?(&:odd?)    # => false
	