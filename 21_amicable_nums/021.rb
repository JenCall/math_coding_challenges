# Problem 21
# Amicable Numbers

# For example, the proper divisors of 220 are 1, 2, 4, 5, 10, 11, 20, 22, 44, 55 and 110; 
# Therefore d(220) = 284. The proper divisors of 284 are 1, 2, 4, 71 and 142; so d(284) = 220.

def find_divisors(n)
    (1..n).each do |n|
        p n
    end
end

p find_divisors(3)