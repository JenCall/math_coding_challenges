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
    
end


find_factorial(10)
