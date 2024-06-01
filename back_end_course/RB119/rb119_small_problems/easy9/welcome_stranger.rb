=begin   
p: 
  i/p - an array - with persons name  and a hash (:title and occupation)
  o/p - greeting to person's full name and title and occupation 

  e: 
  greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
=> "Hello, John Q Doe! Nice to have a Master Plumber around."

Algo:
- itearte the array to get the name in full and 
use concatanation
- fill title and occupation from hash 


=end 
def greetings(name_arr,title_hash)
  name  = name_arr.join(" ")
  puts "Hello, #{name}! Nice to have a #{title_hash[:title]} #{title_hash[:occupation]} around. "
end

greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
#=> "Hello, John Q Doe! Nice to have a Master Plumber around
greetings(['udeshi' , 'priya'], {title: 'mrs', occupation: 'teacher'})