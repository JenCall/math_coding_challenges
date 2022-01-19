# Problem 21
# Amicable Numbers

# For example, the proper divisors of 220 are 1, 2, 4, 5, 10, 11, 20, 22, 44, 55 and 110; 
# Therefore d(220) = 284. The proper divisors of 284 are 1, 2, 4, 71 and 142; so d(284) = 220.

def find_divisors(n)
    values = {}
    (1..n).to_a.each do |n|
        num = []
        (1..n-1).to_a.each { |i| num << i if n % i == 0 }
        values[n] = num.sum
    end
    comparision(values)
end

def comparision(values)
    invert = values.invert
    new_hash = {}
    # ( invert[k] == values[k] && ? invert[k] : k )
    (invert).each do |keys_1, values_1| 
        (values).each do |keys_2, values_2| 
        if (keys_1 == keys_2 && values_1 == values_2)
            new_hash[keys_1] = values_1
        end
        end
    end
    p new_hash
end

find_divisors(11000)