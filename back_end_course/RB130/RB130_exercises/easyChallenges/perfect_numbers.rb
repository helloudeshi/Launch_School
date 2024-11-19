class PerfectNumber
  def self.classify(num)
    raise StandardError if num < 1

    total = divisors(num).sum
    if total == num
      'perfect'
    elsif total < num
      'deficient'
    else
      'abundant'
    end
  end

  class << self # this is a way to make private class method 
    private

    def divisors(num)
      1.upto(num / 2).select { |n| num % n == 0 }
    end
  end
end

p PerfectNumber.classify(12)
