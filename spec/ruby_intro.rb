# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  if arr.length == 0
    return 0
  end
  ans = 0
  for num in arr
    ans += num
  end
  return ans
end

def max_2_sum arr
  # YOUR CODE HERE
  if arr.length == 0
    return 0
  end
  
  if arr.length == 1
    return arr[0]
  end
  
  num1 = arr.sort[-1]
  num2 = arr.sort[-2]
  ans = num1 + num2
  return ans
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  if arr.length < 2
    return false
  end
  
  dict = Hash.new
  for num in arr
    temp = n - num
    if dict.key?(temp)
      return true
    end
    dict[num] = temp
  end
  
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, #{name}"
end

def starts_with_consonant? s
  # YOUR CODE HERE
  return (s =~ /[bcdfghjklmnpqrstvwxyz]/i) == 0
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if s == ""
    return false
  end
  
  for idx in 0..(s.length - 1)
    if s[idx] != "1" and s[idx] != "0"
      return false
    end
  end
  
  if s.to_i(2) % 4 == 0
    return true
  end
  
  return false
end

# Part 3

class BookInStock
  def initialize(isbn, price)
    if isbn.length == 0 || price <= 0
      raise(ArgumentError)
    end
    
    @isbn = isbn
    @price = price
  end
  
  def isbn
    @isbn
  end
  
  def price
    @price
  end
  
  def isbn=(value)
    @isbn = value
  end
  
  def price=(value)
    @price = value
  end
  
  def price_as_string
    return "$#{'%0.2f' % @price}"
  end
end
