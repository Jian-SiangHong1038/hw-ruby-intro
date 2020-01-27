# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  arr.inject(0, :+)
end

def max_2_sum arr
  # YOUR CODE HERE
  arr.sort.reverse.take(2).reduce(0) {|last, n| last + n }
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  if arr.length < 2
    return false
  end
  
  sorted = arr.sort
  l = 0
  r = arr.length - 1
  
  loop do
    break if l >= r
    if sorted[l] + sorted[r] == n
      return true
    elsif sorted[l] + sorted[r] < n
      l += 1
    else
      r -= 1
    end
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
  if s.length == 0 then return false end
    
  "bcdfghjklmnpqrstvwxyz".include? s[0].downcase
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if s != "0" && (nil == (/^[01]+$/ =~ s) || s.length < 3 || s.reverse[0,2] != "00")
    return false 
  end
  
  true
end

# Part 3

class BookInStock
# YOUR CODE HERE
  def initialize(isbn, price)
    self.isbn = isbn
    self.price = price
  end
  
  def isbn
    @ISBN
  end
  
  def isbn=(new_ISBN)
    if new_ISBN.length == 0
      raise ArgumentError, 'ISBN is not valid'
    end
    
    @ISBN = new_ISBN
  end
  
  def price
    @price
  end
  
  def price=(new_price)
    if new_price <= 0
      raise ArgumentError, 'Price must be greater than 0'
    end  
    @price = new_price
  end
  
  def price_as_string
    "$%.2f" % @price
  end
end
