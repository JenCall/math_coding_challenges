# Problem 14
# Collatz Problem - all starting numbers finish at 1

# RULE
# n → n/2 (n is even)
# n → 3n + 1 (n is odd)

def find_values(n)
    total = {} 
    (2..n).to_a.each do |n| 
        list = [n]
        while n > 1    
            if n % 2 == 0
                n = n / 2
            else
                n = 3 * n + 1
            end
            list << n
        end
        total[list[0]] = list
        # total << list
    end
    # p total
    longest_collatz(total)
end

def longest_collatz(values)
    value = values.sort_by {|_key, value| value.count }
    p value[-1]
end    

find_values(1000000)