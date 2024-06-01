def shout_out_to(name)
  #name.chars. { |c| c.upcase! }

  name = name.upcase!

  puts 'HEY ' + name
end

shout_out_to('you') # expected: 'HEY YOU'