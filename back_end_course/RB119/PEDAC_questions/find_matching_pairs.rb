=begin   
Given a sentence, find all pairs of words whose first letter matches the 
last letter of its pair. Return an empty array if there’s no such pair. 
Only consider words that have at least length of 2 for the pairings.

puts find_matching_pairs("The cat in the hat").inspect # [["The", "cat"], ["The", "hat"], ["the", "hat"]]
puts find_matching_pairs("A man a plan a canal Panama").inspect # []
puts find_matching_pairs("This sentence has no pairs").inspect # [["sentence", "has"], ["sentence", "pairs"]]
puts find_matching_pairs("Apple leads to leap").inspect # []


P:
input - sentence 
output - matching pair array which match the first letter and last letter ['the', 'hat']
 
Rules : cases should not be considered i.e. if first letter is 'T' last letter can be 'T' or 't'
 -return empty array if it has no matching pairs 


E:

D:

A:
create an empty array to store matching pairs
- itearte thorough array (0..array.size-2)
  -iterate through (1..array.size-1) to 
    -check each word of the array whether the first letter is match with the second words last letter
    - if so store the pair in matching_words array

-return matching words array

=end 
