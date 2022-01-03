# Problem 06
# Find the difference between the sum of the squares of the 
# first one hundred natural numbers and the square of the sum.


def find_square(n)
    sum_squares = 0
    (1..n).to_a.each do |n|
        sum_squares += (n * n)
    end
    sum_squares
end

def find_sum_square(n)
    sum = (1..n).sum
    sum * sum
end

def find_square_difference(n)
    find_sum_square(n) - find_square(n)
end

p find_square_difference(100)