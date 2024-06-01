=begin
 Make a madlibs program that reads in some text from a text file that you have created,
  and then plugs in a selection of randomized nouns, verbs, adjectives, 
  and adverbs into that text and prints it. You can build your lists of nouns, 
  verbs, adjectives, and adverbs directly into your program, 
  but the text data should come from a file 
  or other external source. Your program should read this text, and for each line, 
  it should place random words of the appropriate types into the text, and print the result.

  example output : 
  The sleepy brown cat noisily
      licks the sleepy yellow
      dog, who lazily licks his
      tail and looks around.

      adjectives: quick lazy sleepy ugly
      nouns: fox dog head leg
      verbs: jumps lifts bites licks
      adverb: easily lazily noisily excitedly

=end  

adjectives= %w(quick lazy sleepy ugly)
nouns= %w(fox dog head leg)
verbs = %w(jumps lifts bites licks)
adverb=%w(easily lazily noisily excitedly)

puts "The #{adjectives.sample} brown #{adverb.sample} #{verbs.sample} the #{adjectives.sample} yellow #{nouns.sample}, who #{adverb.sample} #{verbs.sample} his #{nouns.sample} and looks around"
