# first_char = str[0]
# last_char = str[str.length-1]
# str_arr = str.split("")
# str_arr.pop
# str_arr.shift
# sorted_arr =  str_arr.sort!
# sorted_arr.push(last_char)
# sorted_arr.unshift(first_char)
# scrambled_str = sorted_arr.join
def check_punctuations(char)
  ".!@#$%^&*?'-_,".include?(char)
end

def find_1stchar(string)
  first_char = ''
  first_charindx = 0
  i = 0
  loop do
    if check_punctuations(string[i])
      i += 1
    else
      first_char = string[i]
      first_charindx = i
      break
    end
    break if i == string.size
  end
  first_charindx
end

def find_lastchar(string)
  last_char = ''
  last_charindx = -1
  i = -1
  loop do
    if check_punctuations(string[i])
      i -= 1
    else
      last_char = string[i]
      last_charindx = i
      break
    end
    break if i == string.size
  end
  last_charindx
end

def scramble_words(str)
  str_array = str.split('')
  sorted_arr = []
  if str_array == [] || str_array.size == 1
    sorted_arr = str.split('')
  else
    a = find_1stchar(str)
    b = str.size + find_lastchar(str)

    char_array = []
    for i in ((a + 1)..(b - 1)) do
      char_array.push(str_array[i]) unless check_punctuations(str_array[i])
    end

    sorted_char_array = char_array.sort!
    sorted_char_array.push(str_array[b])
    sorted_char_array.unshift(str_array[a])
    j = 0
    for i in (0..str_array.length - 1) do
      if check_punctuations(str_array[i])
        sorted_arr[i] = str_array[i]
      else
        sorted_arr[i] = sorted_char_array[j]
        j += 1
      end
    end
  end
  sorted_arr.join
end

p scramble_words('udes#hika*') #
p scramble_words('professionals') == 'paefilnoorsss' #
p scramble_words('i') == 'i' # ?
p scramble_words('') == '' #
p scramble_words('me') == 'me' #
p scramble_words('you') == 'you' #
p scramble_words('card-carrying') == 'caac-dinrrryg'
p scramble_words("shan't") == "sahn't"
p scramble_words('-dcba') == '-dbca'
p scramble_words('dcba.') == 'dbca.'
p scramble_words("you've gotta dance like there's nobody watching, love like you'll never be hurt, sing like there's
    nobody listening, and live like it's heaven on earth.") == ("you've gotta dacne like teehr's nbdooy wachintg, love like ylo'ul
neevr be hrut, sing like teehr's nbdooy leiinnstg, and live like it's haeevn on earth.")
