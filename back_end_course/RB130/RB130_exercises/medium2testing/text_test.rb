require 'minitest/autorun'

require_relative 'text'

class TestText < Minitest::Test
  def setup
    @file = File.open('sample_text.txt','r')
    @text = Text.new(@file.read)
  end

  def test_swap
    actual_text = @text.swap('a', 'e')
    expected_text = "Lorem ipsum dolor sit emet, consectetur edipiscing elit. Cres sed vulputete ipsum.\nSuspendisse commodo sem ercu. Donec e nisi elit. Nullem eget nisi commodo, volutpet\nquem e, viverre meuris. Nunc viverre sed messe e condimentum. Suspendisse ornere justo\nnulle, sit emet mollis eros sollicitudin et. Etiem meximus molestie eros, sit emet dictum\ndolor ornere bibendum. Morbi ut messe nec lorem tincidunt elementum vitee id megne. Cres\net verius meuris, et pheretre mi."

    assert_equal expected_text, actual_text
  end

  def test_word_count
    total_words = @text.word_count
    assert_equal 72, total_words
  end

  def teardown
    @file.close
  end
end

#### second method_using gsub

# class TestText<Minitest::Test
  
#   def setup 
#     @file = File.open('sample_text.txt')
#     @text = @file.read
#     @text_obj = Text.new(@text)
#   end

#   def test_swap
#     actual_text = @text_obj.swap('a','e')
#     expected_text = @text.gsub('a', 'e')
#     assert_equal(expected_text,actual_text)
#   end

#   def teardown
#     @file.close
#   end

# end
