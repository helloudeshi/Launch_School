flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

name_hash = {}
flintstones.each_with_index do |name, idx|
  name_hash[name] = idx
end

p name_hash
