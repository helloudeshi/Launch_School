=begin 
def compute
  block_given? ? yield : 'Does not compute.'
end

p compute { 5 + 3 } == 8
p compute { 'a' + 'b' } == 'ab'
p compute == 'Does not compute.'
=end

###further exploration 
def compute(arg)
  block_given? ? yield(arg) : arg
end

p compute(10) {|arg| 5 + 3 + arg} == 18
p compute('hello') { |arg| arg+'a' + 'b'} == 'helloab'
p compute('world') == 'world'