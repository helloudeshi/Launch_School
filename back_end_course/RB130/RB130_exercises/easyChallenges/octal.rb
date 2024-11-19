class Octal
  def initialize(octal)
    @octal = octal
  end

  def to_decimal
    decimal_num = 0
    return 0 if @octal.chars.any? { |ele| ele =~ /[a-z]/ }

    num_arr = @octal.to_i.digits
    return 0 if num_arr.any? { |el| el >= 8 }

    num_arr.each_with_index do |ele, ind|
      decimal_num += ele * (8**ind)
    end
    decimal_num
  end
end

num = Octal.new('234abc')
p num.to_decimal
