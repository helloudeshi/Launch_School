#   P: print diamond shape using the letter given
#   - start from A
#   -given letter should print widest
#   - exept first and last each raw has 2 identical letters
#   - only make diamonds if the letter position is odd
#   (1-->A, 3-->C, 5-->E, 7-->G)
#
#   A:
#   get the letter position
#    if it is 3rd letter
#     -> width and length is 3+(3-1)
#
#   print 'A' on the 1st raw mid line (1,3)/ 5th letter (1,5)
#   print 'B' (2,2) and (2,4)  / (2,4) and (2,6)
#   print 'C" (3,1) and (3,5) / (3,3) and (3,7)
#   print 'B' (4,2) and (4,4) / (4,2) and (4,8)
#   print 'A' again (5,3) / (5,1) and (5,9)
#                         /(6,2) and (6,8)
#                         /(7,3) and (7,7)
#                         /(8,4) and (8,6)
#                         /(9,5)
#
#
#
#   Itearate (A--> given letter)
#    - > max length and width = letter_ind + (letter_ind -1)
#    raw numbers --> +=1
#    A --> 1, max_raw
#    B --> 2 ,max_raw+1
#    c --> 3--maxraw/2
#    spaces * (middle/2) + 'A' + max_length/2
#    spaces* (max_length/2)-1 + 'B' + space* 1 + 'B' + space* (max_length/2)-1
#
#
#

class Diamond

  def self.make_diamond(letter)
    max_raw = letter_ind(letter) + (letter_ind(letter) - 1)
    middle = max_raw / 2 + 1
    letter_arr = ('A'..letter).to_a+ ('A'...letter).to_a.reverse
    result = (1.upto(max_raw).each do |raw|
              let = letter_arr[raw-1]
      1.upto(max_raw).each do |column|
        if (column == middle - (raw-1)) || (column == middle + (raw-1)) || (column == middle - (max_raw-raw)) || (column == middle + (max_raw- raw))
          print let
        else
          print ' '
        end
      end
      puts ''
    end)
    result
  end

  def self.letter_ind(letter)
    ('A'..'Z').to_a.index(letter) + 1
  end
end

dia = Diamond.new
dia.make_diamond('E')
