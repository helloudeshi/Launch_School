=begin
  P : create a custom data set (unique elements that can be manipulated in several ways)
  E : Elements are numbers
    : instance methods - empty? / contains?(arg) / subset? / 
  D : 

  Algo : 
  - constructor method 
  - 
=end

class CustomSet
  attr_accessor :arr
  def initialize(arr = [])
    @arr = arr
  end
 
  def contains?(item)
    @arr.include?(item)
  end

  def empty?
    @arr == []
  end

  def subset?(custom_set)
    arr.all?{|ele| custom_set.arr.include?(ele)}
  end

  def disjoint?(custom_set)
    custom_set.arr.none?{|ele| arr.include?(ele)}
  end

  def eql?(custom_set)
    return false if custom_set.arr.uniq.size != arr.uniq.size

    subset?(custom_set) || custom_set.arr.all?{|ele| arr.include?(ele)}
  end

  def add(ele)
    arr << ele unless arr.include?(ele)
    self
  end

  def ==(other)
    eql?(other)
  end

  def intersection(custom_set)
    common_ele = []
    arr.each{|ele| common_ele << ele if custom_set.arr.include?(ele)}
    self.class.new(common_ele)
  end

  def difference(custom_set)
    diff_ele = []
    arr.each{|ele| diff_ele << ele unless custom_set.arr.include?(ele) }
    self.class.new(diff_ele)
  end

  def union(custom_set)
    all_ele = (arr + custom_set.arr).sort.uniq
    self.class.new(all_ele)
  end

end