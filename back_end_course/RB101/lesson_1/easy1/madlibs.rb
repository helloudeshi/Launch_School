def madlibs

        puts "Enter a noun:"
        noun = gets.chomp
        puts "Enter a verb:"
        verb = gets.chomp
        puts "Enter an adjective: "
        adjective = gets.chomp
        puts "Enter an adverb:"
        adverb = gets.chomp
        sentence_1 = "Do you #{verb} your #{adjective} #{noun} #{adverb}? That's hilarious!"
        sentence_2 = "The #{adjective} #{noun} does not #{verb} #{adverb}. It is too lazy..!"
        sentence_3 = "The #{noun} #{adverb} #{verb} toward the #{adjective} bench."
    puts [sentence_1, sentence_2, sentence_3].sample
    end 

    madlibs