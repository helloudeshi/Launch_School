def song_decoder(song)
  dubing_word = 'WUB'
  song_arr = song.split(dubing_word)
  song_arr.join(' ').squeeze.lstrip.rstrip


end

p song_decoder("AWUBBWUBC") #== "A B C"
p song_decoder("AWUBWUBWUBBWUBWUBWUBC") #== "A B C"
p song_decoder("WUBAWUBBWUBCWUB") #== "A B C"