# Problem 04 - largest palindrom number.

# 01-Solution
numbers = (100..999).to_a.product((100..999).to_a)
products = numbers.map { |num| num[0] * num[1] }
palindromes = []

products.each { |n| palindromes << n if n == n.to_s.reverse.to_i }
puts palindromes.max

# 02-Solution
def find_largest_palindrome(list)
    list.max
end

def isPalindrome(list)
    palindrome_nums = []
    list.each { |n| palindrome_nums << n if n == n.to_s.reverse.to_i }

    find_largest_palindrome(palindrome_nums)
end

def find_palindrome_numbers(min, max)
    numbers = (min..max).to_a.product((min..max).to_a)
    products = numbers.map { |num| num[0] * num[1] }
    
    isPalindrome(products)
end

puts find_palindrome_numbers(100, 999)