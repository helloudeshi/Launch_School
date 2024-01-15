# def isnotvovewl?(char)
#   'aeiouAEIOU'.index(char).nil?
# end

# #  p !isnotvovewl?('e')

# def solve(str)
#   i = 0
#   longest_chain_len = 0
#   current_chain_len = 0
#   loop do
#     if isnotvovewl?(str[i])
#       current_chain_len = 0
#     else
#       current_chain_len += 1
#     end
#     longest_chain_len = current_chain_len if longest_chain_len < current_chain_len
#     i += 1
#     break if i == str.length
#   end
#   longest_chain_len
# end


  def solve(str)
    i = 0
    longest_chain_len = 0
    current_chain_len = 0
    loop do
      if !'aeiou'.include? str[i]
        current_chain_len = 0
      else
        current_chain_len += 1
      end
      longest_chain_len = current_chain_len if longest_chain_len < current_chain_len
      i += 1
      break if i == str.length
    end
    longest_chain_len
  end
  
p solve('codewarriors')
p solve('suoidea') #== 3
 p solve("iuuvgheaae") #== 4
p solve("ultrarevolutionariees") #== 3
p solve("strengthlessnesses") == 1
p solve("cuboideonavicuare") == 2
p solve("chrononhotonthuooaos") == 5
p solve("iiihoovaeaaaoougjyaw") == 8


