require 'set'

# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  unless arr.is_a? Array
    return 0
  end
  arr.sum
end

def max_2_sum arr
  # YOUR CODE HERE
  if (!arr.is_a? Array)  || arr.empty?
    return 0
  end
  if arr.size == 1
    return arr[0]
  end
  arr.sort.reverse!.slice(0, 2).sum
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  unless arr.is_a? Array
    return false
  end
  set = Set.new
  arr.each do |num|
    if set.include?  n - num
      return true
    end
    set.add num
  end
  false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  "Hello, " + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if (!s.is_a? String) || s.size == 0
    return false
  end
  s.downcase.match? /^(?![aeiou])[[a-z]]/
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  unless s.match? /^[01]+$/
    return false
  end
  num = 0
  s.each_char do |x|
    num *= 2
    num += x.ord - '0'.ord
  end
  num % 4 == 0
end

# Part 3

class BookInStock
# YOUR CODE HERE
  def initialize isbn, price
    unless isbn.match? /^[a-zA-Z0-9\-]+$/
      raise ArgumentError
    end
    unless (price.is_a? Numeric) && (price > 0)
      raise ArgumentError
    end
    @isbn = isbn
    @price = price
  end

  attr_accessor :isbn
  attr_accessor :price

  def price_as_string
    "$#{'%.2f' % @price.round(2)}"
  end
end
