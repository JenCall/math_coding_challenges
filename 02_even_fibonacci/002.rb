# Problem 02 - find the sum of the even-valued terms.

# 01-mySolution
fibonacci_sequence = [1, 2]
even_num = []
i = 1

while fibonacci_sequence[-1] < 4000000
    fibonacci_sequence << fibonacci_sequence[i-1] + fibonacci_sequence[i]
    i += 1
end

fibonacci_sequence.each { |n| even_num << n if n % 2 == 0 }
puts even_num.sum