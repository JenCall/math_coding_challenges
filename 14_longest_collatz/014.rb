# Problem 14
# Collatz Problem - all starting numbers finish at 1

# RULE
# n → n/2 (n is even)
# n → 3n + 1 (n is odd)

def longest_collatz(n)
list = [n] 
total = [] 
  
    while n > 1    
        if n % 2 == 0
            n = n / 2
        else
            n = 3 * n + 1
        end
        list << n
    end
    p list
end

longest_collatz(15)