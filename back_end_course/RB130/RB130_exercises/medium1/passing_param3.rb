items = %w[apples corn cabbage wheat]

def gather(items)
  puts "Let's start gathering food."
  yield(items)
  puts "We've finished gathering!"
end

gather(items) do |*produce, item|
  puts "#{produce.join(', ')}"
  puts "#{item}"
end

gather(items) do | first,*produce ,last |
  puts "#{first}"
  puts "#{produce.join(', ')}"
  puts "#{last}"
end
gather(items) do |apples,*produce |
  puts apples
  puts "#{produce.join(', ')}"
end

gather(items) do | first, second,third ,last |
  puts "#{first}, #{second}, #{third} and #{last}"
end

=begin     
When passing an array to a method, 
we need to be explicit in how we pass it. 
If we want to change that array into a list
of items, we'll have to do so with 
the splat operator *. Overall, 
it seems like using a block was the right 
way to go, it allows us more flexibility 
and leaves the implementation of gather 
to the user.
=end
