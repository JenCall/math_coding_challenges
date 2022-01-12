# Problem 14
# Collatz Problem - all starting numbers finish at 1

# RULE
# n → n/2 (n is even)
# n → 3n + 1 (n is odd)

def longest_collatz(n)
 
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
    p total.size
end

longest_collatz(13)