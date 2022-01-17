# Problem 20
# Find the sum or the 100! digits

def find_factorial(num)
    sum = 1
    i = 2
    while i <= num
        sum = sum * i
        i += 1
    end
    sum_digits(sum)
end

def sum_digits(num)
   digits = num.to_s.split("").map { |n| n.to_i }.sum
end

p find_factorial(100)
