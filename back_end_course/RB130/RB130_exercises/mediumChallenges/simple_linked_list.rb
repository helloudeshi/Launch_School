
class Element
  attr_accessor :data, :nxt

  def initialize(data, nxt = nil)
    @data = data
    @nxt = nxt
  end

  def next
    @nxt
  end

  def tail?
    return false if data.nil?
    true
  end

  def datum
    @data
  end
end

class SimpleLinkedList

  def initialize
    @first = nil
  end

  def size
    return 0 if @first.nil?

    counter = 1
    next_elemnt = @first.nxt
    until next_elemnt.nil?
      counter += 1
      next_elemnt = next_elemnt.nxt
    end
    counter
  end

  def empty?
    @first.nil?
  end

  def push(num)
    element = Element.new(num)
    element.nxt = @first
    @first = element
  end

  def peek
    @first ? @first.data : nil
  end

  def head
    @first
  end

  def pop
    return nil if @first.nil?

    pop_ele = @first.data
    @first = @first.nxt
    pop_ele
  end

  def to_a
    arr = []
    next_elemnt = @first
    until next_elemnt.nil?
      arr << next_elemnt.data
      next_elemnt = next_elemnt.nxt
    end
    arr
  end

  def reverse
    r_list = self.class.new
    self.to_a.each{|ele| r_list.push(ele)}
    r_list
  end

  def self.from_a(arr)
    new_list = self.new
    return new if [[], nil].include?(arr)

    arr.reverse.each { |ele| new_list.push(ele) } if arr.size >= 1
    new_list
  end

  def to_s
    next_elemnt = @first
    until next_elemnt.nil?
      p next_elemnt.data
      next_elemnt = next_elemnt.nxt
    end
  end
end

list1 = SimpleLinkedList.new
list1.push(1)
list1.push(2)
list1.push(3)
list1.to_s

list2 = SimpleLinkedList.from_a([1, 2])
p list2
