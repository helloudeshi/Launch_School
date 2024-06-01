#   - I/p - word
#   - o/p - boolean
#         - true - if the word can be made using one letter
#                 letter from block
# Algo :
# - iterate over letters of the word
# - then iterate over each block
# - check each letter is include
#  - if it is include delete that sub block , and check the next
#   letter of the word
#

def block_word?(word)
  block = [%w[B O], %w[X K], %w[D Q], %w[C P], %w[N A],
           %w[G T], %w[R E], %w[F S], %w[J W], %w[H U],
           %w[V I], %w[L Y], %w[Z M]]
  word_block = []
  word.each_char do |char|
    block.each do |sub|
      word_block << sub if sub.include?(char.upcase)
    end
  end
  return true if word_block.uniq.size == word.size

  false
end
p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true
p block_word?('xkc')
