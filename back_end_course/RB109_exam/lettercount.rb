def letter_count(strg)
    char_hash = {}
    i=0
    loop do 
    char = strg[i]
    num = strg.count(char)
    char_hash[:"#{char}"] = num
    i +=1
    break if i == strg.length
    end
    p char_hash
end
letter_count("udeu")
puts letter_count('codewars') == {:a=>1, :c=>1, :d=>1, :e=>1, :o=>1, :r=>1, :s=>1, :w=>1}
puts letter_count('activity') == {:a=>1, :c=>1, :i=>2, :t=>2, :v=>1, :y=>1}
puts letter_count('arithmetics') == {:a=>1, :c=>1, :e=>1, :h=>1, :i=>2, :m=>1, :r=>1, :s=>1, :t=>2}
