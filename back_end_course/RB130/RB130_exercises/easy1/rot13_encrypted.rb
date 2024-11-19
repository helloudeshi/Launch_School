def find_letter(char)
  alphabet = ('a'..'z').to_a
  if alphabet.include?(char)
    index = alphabet.index(char)
    index < 13 ? alphabet[index + 13] : alphabet[index - 13]
  else
    char
  end
end

def decipher_rot13(name)
  str = ''
  name.each_char { |char| str << find_letter(char.downcase) }
  str.split.map(&:capitalize).join(' ')
end

ENCRYPTED_NAMES = [
  'Nqn Ybirynpr',
  'Tenpr Ubccre',
  'Nqryr Tbyqfgvar',
  'Nyna Ghevat',
  'Puneyrf Onoontr',
  'Noqhyynu Zhunzznq ova Zhfn ny-Xujnevmzv',
  'Wbua Ngnanfbss',
  'Ybvf Unvog',
  'Pynhqr Funaaba',
  'Fgrir Wbof',
  'Ovyy Tngrf',
  'Gvz Orearef-Yrr',
  'Fgrir Jbmavnx',
  'Xbaenq Mhfr',
  'Fve Nagbal Ubner',
  'Zneiva Zvafxl',
  'Lhxvuveb Zngfhzbgb',
  'Unllvz Fybavzfxv',
  'Tregehqr Oynapu'
]

ENCRYPTED_NAMES.each do |encrypted_name|
  puts decipher_rot13(encrypted_name)
end

# p decipher_rot13('Nqn Ybirynpr')
# p decipher_rot13('Tenpr Ubccre')
# p decipher_rot13('Nqryr Tbyqfgvar')
# p decipher_rot13('Nyna Ghevat')
# p decipher_rot13('Puneyrf Onoontr')
# p decipher_rot13('Noqhyynu Zhunzznq ova Zhfn ny-Xujnevmzv')
# p decipher_rot13('Wbua Ngnanfbss')
# p decipher_rot13('Ybvf Unvog')
# p decipher_rot13('Pynhqr Funaaba')
# p decipher_rot13('Fgrir Wbof')
# p decipher_rot13('Ovyy Tngrf')
# p decipher_rot13('Gvz Orearef-Yrr')
# p decipher_rot13('Fgrir Jbmavnx')
# p decipher_rot13('Xbaenq Mhfr')
# p decipher_rot13('Fve Nagbal Ubner')
# p decipher_rot13('Zneiva Zvafxl')
# p decipher_rot13('Lhxvuveb Zngfhzbgb')
# p decipher_rot13('Unllvz Fybavzfxv')
# p decipher_rot13('Tregehqr Oynapu')
