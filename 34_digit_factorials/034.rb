# Problem 34
# Find the sum of all numbers which are equal to the sum of the factorial of their digits.

def find_factorial(num)
    sum = 1
    i = 2
    factorials = Hash.new
    (3..num).each do |n|
        nums = n
        while i <= n
            sum = sum * i
            i += 1
        end
        factorials[n] = sum
        p factorials
    end
end

find_factorial(145)