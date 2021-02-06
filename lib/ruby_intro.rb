# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  arr.inject(0, :+)
end

def max_2_sum arr
  # YOUR CODE HERE
  arr.max(2).inject(0, :+)
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  arr.combination(2).to_a.map{|x,y| x+y}.include?(n)
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  'Hello, '+name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  /[^aeiou]/ === s.downcase[0] and /[a-z]/ === s.downcase[0]
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  ((/[01]/ ===s) and not (/[^01]/===s)) and s.to_i(2)%4 == 0
end

# Part 3

class BookInStock
# YOUR CODE HERE
  def initialize(isbn, price)
    if isbn.empty? or price<=0
      raise ArgumentError
    end
    @isbn, @price  = isbn, price
  end
  def isbn
    @isbn
  end
  def price
    @price
  end
  def isbn=(new_isbn)
    @isbn=new_isbn
  end
  def price=(new_price)
    @price=new_price
  end
  def price_as_string
    "$"+"%0.2f"%@price
  end
end
