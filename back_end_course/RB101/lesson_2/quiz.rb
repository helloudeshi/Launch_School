# def longest_word(sentence)
#     words = sentence.split
#     saved_word = words.shift

#     # words.each do |word|
#     #   if word.length >= saved_word.length
#     #     saved_word = word
#     #   end
#     # end

#     saved_word
#   end
#   puts longest_word("hello1 we are hello2")
# def print_string(string)
#     puts string # This will output 'Hello' because we have access to the string 'Hello'
#     # puts a      # This will raise an exception because we don't have access to the variable a
#   end

#   a = "Hello"
#   print_string(a)

# user_input = gets
# name = ''
# loop do
#   name = user_input
#   break
# end

# if user_input
#   puts "Hello " + name
# end

# def extend_greeting(greeting)
#     greeting << " there"
#   end

#   greeting = "hi"
#   extend_greeting(greeting)

#   puts greeting

# def name
#     "George"
#   end

#   name = "Lisa"

#   def display_name
#     puts name
#   end

#   display_name

# def name
#     "George"
#   end

#   name = "Lisa"

#   def display_name(name)
#     puts name
#   end

#   display_name(name)

# name = "Lisa"

# def name
#   "George"
# end

# loop do
#   puts name
#   break
# end

# advice = "Few things in life are as important as house training your pet dinosaur. "
# puts advice.gsub!(/important/, 'urgent')

# p 40.between?(10,100)
# p (10..100).cover?(42)

# famous_words = "seven years ago..."
# puts "Four score and " + famous_words
# puts "Four score and " << famous_words
# puts famous_words.prepend "Four score and "

# flintstones = []
# flintstones << ["Fred", "Wilma"]
# flintstones.append ["Barney", "Betty"]
# flintstones << ["BamBam", "Pebbles"]

# p flintstones.flatten # => to un-nest array

# flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3,
#                 "BamBam" => 4, "Pebbles" => 5 }
# # p flintstones.to_a[2]
# p flintstones.assoc("Barney")

# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
# # puts ages.key?("Spot")
# # puts ages.include?("Spot")
# puts ages.member?("Spot")

# munsters_description = "The Munsters are creepy in a good way."
# puts munsters_description.swapcase
# puts munsters_description.downcase
# puts munsters_description.upcase

# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }
# additional_ages = { "Marilyn" => 22, "Spot" => 237 }
# puts ages.merge!(additional_ages)
# puts ages

# advice = "Few things in life are as important as house training your pet dinosaur."
# p advice.include?"dino"
# p advice.match?"dino"

# flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
# p flintstones
# # p flintstones.append("Dino", "Hippo")
# p flintstones.concat(%w(Dino Hippo)) # concat adds an array rather than one item
# p flintstones.push("Dino").push("Hippo")

# advice = "Few things in life are as important as house training your pet dinosaur"
# # str1 = "Few things in life are as important as"
# # puts advice.slice!(0..str1.size)
# puts advice.slice!(0, advice.index('house'))
# puts advice

# statement = "The Flintstones Rock!"
# puts statement.count('t')

# title = "Flintstone Family Members"
# puts title.center(40)
# name = 'mother' 
# puts name.center(40)

