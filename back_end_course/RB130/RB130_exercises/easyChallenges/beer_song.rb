# To generate the beer_song
class BeerSong
  def self.lyrics
    num = 99
    while num > 1
      num = 'No' if num == 0
      puts "#{num} bottles of beer on the wall, #{num} bottles of beer.\n" "Take one down and pass it around, #{num - 1} bottle of beer on the wall.\n""\n"
      num -= 1
    end
    puts "1 bottle of beer on the wall, 1 bottle of beer.\n" "Take one down and pass it around, No more bottles of beer on the wall.\n""\n"
    puts "No more bottles of beer on the wall, No more bottles of beer.\n" "Go to the store and buy some more, 99 bottles of beer on the wall.\n""\n"
  end
end

# # this is to read the given text file
# class BeerSong
#   SONG = File.open('song.text').read
#
#   def self.verses(strs)
#     line_str = if strs == 0
#                  'No'
#                else
#                  strs.to_s
#                end
#     arr = lyrics.split(/\n{2}/)
#     arr.select do |line|
#       line.start_with?(line_str)
#     end
#   end
#
#   def self.lyrics
#     File.open('song.text').read
#   end
# end
# p BeerSong.verses(0)
p BeerSong.lyrics
