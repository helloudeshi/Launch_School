hsh = {
  'grape' => { type: 'fruit', colors: %w[red green], size: 'small' },
  'carrot' => { type: 'vegetable', colors: ['orange'], size: 'medium' },
  'apple' => { type: 'fruit', colors: %w[red green], size: 'medium' },
  'apricot' => { type: 'fruit', colors: ['orange'], size: 'medium' },
  'marrow' => { type: 'vegetable', colors: ['green'], size: 'large' }
}

color_arr = []
hsh.each_value do |sub_hash|
  if sub_hash[:type] == 'fruit'
    color_arr.push(sub_hash[:colors].map { |el| el.capitalize })
  elsif sub_hash[:type] == 'vegetable'
    color_arr.push(sub_hash[:size].upcase)
  end
end
p color_arr

