munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}
total_male_age = 0

munsters.each_value do |hash|
  total_male_age += hash['age'] if hash['gender'] == 'male'
end

p total_male_age


def mens_age_total(hash)
  mens_totage = 0
  hash.each do |_, subhsh|
    mens_totage += subhsh["age"] if subhsh['gender'] == 'male'
  end 
  p mens_totage
end

mens_age_total(munsters)
