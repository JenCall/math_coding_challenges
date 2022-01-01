# Problem 04 - largest palindrom number.

# 01- Solution
numbers = (100..999).to_a.product((100..999).to_a)
products = numbers.map { |num| num[0] * num[1] }
palindromes = []

products.each do |n|
    if n == n.to_s.reverse.to_i
        palindromes << n
    end    
end
p palindromes.max

# 02 - solution

def find_largest_palindrome(list = [])
    list.max
  end

def isPalindrome(list = [])
    palindrome_nums = []
    list.each do |n|
        if n == n.to_s.reverse.to_i
            palindrome_nums << n
        end    
    end
    find_largest_palindrome(palindrome_nums)
end

def find_palindrome_numbers(min, max)
    numbers = (min..max).to_a.product((min..max).to_a)
    products = numbers.map { |num| num[0] * num[1] }
    p numbers.count
    isPalindrome(products)
end

p find_palindrome_numbers(100, 999)