class Diamond

  def self.make_diamond(letter)
    range = ('A'..letter.upcase).to_a + ('A'...letter.upcase).to_a.reverse
    diamond_width = max_width(letter)

    diamond = []
    range.each do |let|
      diamond << print_raw(let).center(diamond_width)
    end
    diamond.join("\n") + "\n"
  end

  def self.print_raw(letter)
    return 'A' if letter == 'A'
    return 'B B' if letter == 'B'
    
    letter + find_spaces(letter) + letter

  end

  def self.find_spaces(letter)
    letters = ['B']
    count = 1

    until letters.include?(letter)
      letters << letters.last.next
      count += 2
    end
   ' ' * (count)
  end

  def self.max_width(letter)
    return 1 if letter == 'A'

    find_spaces(letter).count(' ') + 2
  end

end

puts Diamond.make_diamond('E')
