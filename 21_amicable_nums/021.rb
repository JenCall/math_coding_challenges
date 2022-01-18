# Problem 21
# Amicable Numbers

# For example, the proper divisors of 220 are 1, 2, 4, 5, 10, 11, 20, 22, 44, 55 and 110; 
# Therefore d(220) = 284. The proper divisors of 284 are 1, 2, 4, 71 and 142; so d(284) = 220.

def find_divisors(n)
    values = {}
    (1..n).to_a.each do |n|
        num = []
        (1..n-1).to_a.each do |i|
            num << i if n % i == 0
        end
        values[n] = num.sum
    end
    p values
end

p find_divisors(1000)