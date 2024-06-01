# INT_STR_HASH = { 0 => '0', 1 => '1', 2 => '2', 3 => '3', 4 => '4', 5 => '5',
#                  6 => '6', 7 => '7', 8 => '8', 9 => '9' }

# def integer_to_string(num)
#   intrger = num.digits.reverse
#   int_string = []
#   intrger.each do |int|
#     int_string << INT_STR_HASH[int]
#   end
#   int_string.join
# end

DIGITS = ['0', '1', '2', '3', '4', '5', '6', '7', '8','9']

def integer_to_string(num)
  result = ''
  loop do 
    num,remainder = num.divmod(10)
    result.prepend(DIGITS[remainder])
    break if num == 0
  end
  result
end

p integer_to_string(4321)== '4321' 
p integer_to_string(0) =='0'
p integer_to_string(5000) == '5000'


=begin

1. mutating methods that do not have a ! 
    String- append
          - prepend
          -replace
          -freeze
          -insert
          -concat or << 
          -clear

    Array - pop
          - shift
          - unshift
          - concat
          - push or append or <<
          - delete or delete_at or delete_if
          - insert
          - replace
          - reverse_each
    Hash - clear
         - delete
         - delete_if (same as reject!)
         - keep_if (same as select!)
         - replace
         - shift
         - store
         - update (same as merge!)    

2. NO methods end with !, but don't have a non-mutating form


=end