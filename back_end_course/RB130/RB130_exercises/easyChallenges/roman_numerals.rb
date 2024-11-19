class RomanNumeral
  attr_reader :num

  HASH = { 1 => 'I', 2 => 'II', 3 => 'III', 4 => 'IV', 5 => 'V', 6 => 'VI', 7 => 'VII', 8 => 'VIII', 9 => 'IX',
           10 => 'X', 50 => 'L', 100 => 'C', 500 => 'D', 1000 => 'M' }

  def initialize(num)
    @num = num
  end

  def to_roman
    numeral = ''
    number_arr = num.to_s.split('')
    number_arr.each_with_index do |num, ind|
      power = 10**(number_arr.size - 1 - ind)
      if num.to_i <= 3 && num.to_i > 0
        numeral << HASH[power] * num.to_i
      elsif num.to_i == 4
        numeral << HASH[power]
        numeral << HASH[power * 4 + power]
      elsif num.to_i == 5
        numeral << HASH[power * num.to_i]
      elsif num.to_i > 5 && num.to_i < 9
        numeral << HASH[power * 4 + power]
        numeral << HASH[power] * (num.to_i - 5)
      elsif num.to_i == 9
        numeral << HASH[power]
        numeral << HASH[power * 10]

      end
    end
    p number_arr
    numeral
  end
end

num1 = RomanNumeral.new(800)
p num1.to_roman
