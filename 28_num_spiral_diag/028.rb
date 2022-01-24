# Problem 28
# What is the sum of the numbers on the diagonals in a 1001 by 1001?

def sum_diagonals(n)
    i = sum = 1
    cycle = 2
    while i < (n * n)   # could be until i >=
        4.times { 
            i += cycle    
            sum += i
            }
            cycle += 2
    end
    puts "Answer: #{sum}"
end

sum_diagonals(1001)


