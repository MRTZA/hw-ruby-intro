# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # Check if array is empty first
  if arr.length < 1
    return 0
  end

  # Loop through array for the sum
  sum = 0
  for a in arr
    sum += a
  end

  return sum
end

def max_2_sum arr
  # Check if array is empty
  if arr.length < 1
    return 0
  end
  
  # Case of single element
  if arr.length == 1
    return arr.first
  end

  # Search for 2 largest elements
  first_large = -(2**(0.size * 8 -2))
  second_large = -(2**(0.size * 8 -2))

  for a in arr
    if a >= first_large
      second_large = first_large
      first_large = a
    elsif
      if a >= second_large
        second_large = a
      end
    end
  end
  
  sum = first_large + second_large
  return sum
end

def sum_to_n? arr, n
  # Check if array has only one element
  if arr.length == 1
    return false
  end
  
  # Add each element to every other to check
  for a in 0..arr.length-1
    for b in a+1..arr.length-1
      if arr[a] + arr[b]== n
        return true
      end
    end
  end

  return false
end

# Part 2

def hello(name)
  return "Hello, " + name
end

def starts_with_consonant? s
  # Check if string is empty
  if s.to_s.strip.empty?
    return false
  end

  # Check if character is a letter
  if s[0] !~ /[[:alpha:]]/
    return false
  end

  # Check if char is a consonant
  vowels = Array['a', 'e', 'i', 'o', 'u']
  for c in vowels
    if s[0].casecmp(c) == 0
      return false
    end
  end

  return true
end

def binary_multiple_of_4? s
  # Check if string is empty
  if s.to_s.strip.empty?
    return false
  else
    # Check if string only contains 0 or 1
    for c in 0..s.length-1
      if !(s[c] == '0' || s[c] == '1')
        return false
      end
    end

    # Convert string to int
    num = s.to_i(2)
    if num % 4 == 0
      return true
    else
      return false
    end
  end
end

# Part 3

class BookInStock
  # Constructor
  def initialize(isbn, price)
    raise ArgumentError, "ISBN can't be empty" unless isbn.to_s.strip.empty? == false
    raise ArgumentError, "Price has to be >0" unless price>0
    @isbn = isbn
    @price = price
  end

  # Getter methods
  def isbn
    @isbn
  end

  def price
    @price
  end

  # Setter methods
  def isbn=(isbn)
    @isbn = isbn
  end

  def price=(price)
    @price = price
  end

  def price_as_string
    # Rounded price
    r = '%.2f' % price
    # Add '$'
    return "$" + r.to_s
  end
end
