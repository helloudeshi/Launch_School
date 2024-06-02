# produce = {
#   'apple' => 'Fruit',
#   'carrot' => 'Vegetable',
#   'pear' => 'Fruit',
#   'broccoli' => 'Vegetable'
# }

# def select_fruit(hash)
#   fruit = hash.select do |key,value|
#      value == 'Fruit'
#   end
#   p fruit
# end

# select_fruit(produce) # => {"apple"=>"Fruit", "pear"=>"Fruit"}

# p(%w[ant bat caterpillar].count do |str|
#   str.length < 4
# end)

# result = [1, 2, 3, 4, 5].each_with_object(0) do |el, obj| 
#   p obj
#   obj += el
#   p obj
# end

# p result
# def change_case(sentence, new_case)
#   case new_case
#   when :snake
#     snake(sentence)
#   when :camel
#     camel(sentence)
#   when :upper_snake
#     upper_snake(sentence)
#   else
#     puts 'Invalid case type'
#   end
# end

# def snake(str)
#   words = str.split
#   current_word = 0

#   loop do
#     words[current_word].downcase!

#     current_word += 1
#     break if current_word >= words.size
#   end

#   words.join('_')
# end

# def camel(str)
#   words = str.split(' ')
#   counter = 0

#   while counter < words.size
#     words[counter] = words[counter].capitalize

#     counter = counter + 1
#   end

#   words.join
# end

# def upper_snake(str)
#   words = str.split
#   current_word = 0

#   loop do
    
#     break if current_word == words.size

#     words[current_word].upcase!
#     current_word += 1
#   end

#   words.join('_')
# end

# sentence = 'The sky was blue'
# p change_case(sentence, :upper_snake) # => 'the_sky_was_blue'

# hsh = {a: 'apple', b: 'pear', c: 'orange', d: 'kiwi', e: 'banana'}
# counter = 0

# new_hsh = {}

# for letter, fruit in hsh
#   new_hsh[letter] = fruit if fruit.size > 4
# end
# p new_hsh

# def some_method(words)
#   arr = []
#   counter = 0

#   loop do
#     word = words[counter]
#     arr << word if word.size < 4

#     counter += 1
#     break if counter == words.size
#   end

#   arr
# end

# poem = %w(April is the cruelest month)
# p some_method(poem)
# def star_method(stars)
#   arr = []
#   stars.each do |star|
#     arr.push(star.upcase)
#   end
#   arr
# end

# stars_1 = ['Sirius', 'Rigel', 'Vega', 'Polaris', 'Altair']
# p stars_2 = star_method(stars_1)
# p stars_1

# def star_method(stars)
#   arr = []
#   counter = 0

#   until counter == stars.size do
#     arr << stars[counter][0, 3]

#     counter += 1
#   end
#   arr
# end

# stars_1 = ['Sirius', 'Rigel', 'Vega', 'Polaris', 'Altair']
# stars_2 = star_method(stars_1)
# p stars_1
# p stars_2

# ['a', 'b', 'c'].select do |item|
#   puts item
# end
# # => []

# numbers = [1, 2, 4, 5, 7, 8, 10, 13, 14]
# odd_numbers = []
# even_numbers = []

# for number in numbers
#   next if number.odd?
#   even_numbers << number
# end

# for number in numbers
#   next unless number.odd?
#   odd_numbers << number
# end

countries_and_capitals = {
  'France' => 'Paris',
  'Belgium' => 'Brussels',
  'Morocco' => 'Rabat',
  'Barbados' => 'Bridgetown',
  'Peru' => 'Lima',
  'Bolivia' => 'La Paz',
  'Brazil' => 'Brasilia'
}

# p (countries_and_capitals.each_with_object({}) do |(k, v), obj|
#   obj[k] = v if k.chr == 'B'
# end)

# def select_countries(hsh)
#   sub_set = {}
#   hsh.each_key do |country|
#     if country[0] == 'B'
#       sub_set[country] = hsh[country]
#     end
#   end
#   sub_set
# end

# p select_countries(countries_and_capitals)

# def begins_with_b(string)
#   string[0] == 'B'
# end

# p (countries_and_capitals.find_all do |country, capital|
#   begins_with_b(country)
# end)

mailing_campaign_leads = [
  {name: 'Emma Lopez', email: 'emma.lopez@some_mail.com', days_since_login: 423, mailing_list: true},
  {name: 'mike richards', email: 'michael.richards@some_mail.com', days_since_login: 23, mailing_list: false},
  {name: 'JANE WILLIAMS', email: 'jane_w95@my_mail.com', days_since_login: 16, mailing_list: true},
  {name: 'Ash Patel', email: 'ash_patel@my_mail.com', days_since_login: 22, mailing_list: true}
]

# counter = 0

# loop do
#   break if counter == mailing_campaign_leads.size
#   full_name = mailing_campaign_leads[counter][:name]
#   names = full_name.split

#   names_counter = 0
#   loop do
#     break if names_counter == names.size
#     name = names[names_counter]
#     names[names_counter] = name.capitalize

#     names_counter += 1
#   end

#   capitalized_full_name = names.join(' ')
#   mailing_campaign_leads[counter][:name] = capitalized_full_name

#   counter += 1
# end

# usable_leads = []
# counter = 0

# loop do
#   break if counter == mailing_campaign_leads.size
#   last_login = mailing_campaign_leads[counter][:days_since_login]
#   subscribed_to_list = mailing_campaign_leads[counter][:mailing_list]

#   if last_login < 60 && subscribed_to_list
#     usable_leads << mailing_campaign_leads[counter]
#   end

# #   counter += 1
# # end
# mailing_campaign_leads.each do |lead|
#   names = lead[:name].split
#   names.map! { |name| name.capitalize }
#   lead[:name] = names.join(' ')
# end

# usable_leads = mailing_campaign_leads.keep_if do |lead|
#   lead[:days_since_login] <= 60 && lead[:mailing_list]
# end
mailing_campaign_leads.each do |lead|
  names = lead[:name].split
  lead[:name] = names.map { |name| name.capitalize }.join(' ')
end

usable_leads = mailing_campaign_leads.reject do |lead|
  last_login = lead[:days_since_login]
  subscribed_to_list = lead[:mailing_list]
  last_login > 59 && !subscribed_to_list
end

p mailing_campaign_leads
p usable_leads
