class TextAnalyzer
  def process(&block)
    File.open('sample_text.txt', &block)
  end
end

analyzer = TextAnalyzer.new
analyzer.process { |f| puts "#{f.read.split(/\n{2}/).count} paragraph" }
analyzer.process { |f| puts "#{f.read.split(/\n/).count} lines"}
analyzer.process { |f| puts "#{f.read.split.count} words" }