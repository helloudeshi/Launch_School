def top_3_words(sentence)
  modified_sen = sentence.delete('/@.,!?')
  return [] if modified_sen.lstrip == '' || modified_sen.rstrip == '' || modified_sen.delete("'").strip == ''

  #   p "sentence #{sentence} , modified_sen is: #{modified_sen} :"
  words = modified_sen.downcase.split(' ')
  word_hash = {}
  words.each do |ele|
    word_hash[ele] = words.count(ele)
  end
  word_hash_vals = word_hash.values

  if word_hash_vals.size >= 3
    max_vals = word_hash_vals.max(3)
    [word_hash.key(max_vals[0]), word_hash.key(max_vals[1]), word_hash.key(max_vals[2])]
  elsif word_hash_vals.size == 2
    max_vals = word_hash_vals.max(3)
    [word_hash.key(max_vals[0]), word_hash.key(max_vals[1])]
  else
    max_vals = word_hash_vals.max(3)
    [word_hash.key(max_vals[0])]
  end
end

p top_3_words('my my my my ')
p top_3_words('a a a b c c d d d d e e e e e') #== ["e", "d", "a"]
p top_3_words('e e e e DDD ddd DdD: ddd ddd aa aA Aa, bb cc cC e e e') #== ["e", "ddd", "aa"]
p top_3_words(" //wont won't won't ") #== ["won't", "wont"]
p top_3_words(' , e .. ') #== ['e']
p top_3_words(' ... ') #== []?
p top_3_words(" ' ") #== []?
p top_3_words(" ''' ") #== []?
p top_3_words(''"In a village of La Mancha, the name of which I have no desire to call to
    mind, there lived not long since one of those gentlemen that keep a lance
    in the lance-rack, an old buckler, a lean hack, and a greyhound for
    coursing. An olla of rather more beef than mutton, a salad on most
    nights, scraps on Saturdays, lentils on Fridays, and a pigeon or so extra
    on Sundays, made away with three-quarters of his income."'') #== %w[a of on]
