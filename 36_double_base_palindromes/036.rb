# Problem 36
# Find the sum of all numbers, less than one million, 
# which are palindromic in base 10 and base 2.

def find_palindrome(n)
    sum = 0
    (1..n).each do |n|
        binary = n.to_s(2)
        
        if (n.to_s == n.to_s.reverse) && (binary == binary.reverse)
            sum += n
        end
    end
    p sum
end

find_palindrome(1000000)