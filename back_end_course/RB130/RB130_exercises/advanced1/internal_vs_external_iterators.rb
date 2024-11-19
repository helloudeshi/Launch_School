=begin
  P: cretae new Enumerator 
  print out 7 factorials starting with 0!
  - use external iterator 
  -after print 3 more factorials, reset enumerator (use rewind method)
  -finally print 7 more factorials

  additional data 
  - need 3 enumerator methods (new, .. rewind)
  - an enumerator also implement the enumerable module

  
=end

# factorial = Enumerator.new do |x|
#   counter = 1
#    y = 1
#  loop do 
#   x<< y
#   y = counter * y
#   counter += 1
#   end
# end

# p factorial.take(3)
# factorial.rewind
# p factorial.take(7)

factorial = Enumerator.new do |y|
  a = 0
  loop do
    if a.zero?
      y << 1
    else
      y << (1..a).inject(:*)
    end
    a += 1
  end
end

7.times { |num| puts "#{num}!: #{factorial.next}"} # External iteration
factorial.rewind

factorial.each_with_index do |facto, idx| # Internal iteration
  puts "#{idx}!: #{facto}"
  break if idx >= 6
end


