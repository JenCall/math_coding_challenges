# Problem 02 - Even Fibonacci Numbers
# By considering the terms in the Fibonacci sequence whose values 
# do not exceed four million, find the sum of the even-valued terms.

# 01-mySolution

fibonacci_sequence = [1, 2]
even_sum = []
i = 1

while fibonacci_sequence[-1] < 4000000
    fibonacci_sequence << fibonacci_sequence[i-1] + fibonacci_sequence[i]
    i += 1
end


fibonacci_sequence.each { |n| even_sum << n if n % 2 == 0 }
puts even_sum.sum