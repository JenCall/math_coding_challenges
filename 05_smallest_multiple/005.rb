# Problem 05

# 2520 is the smallest number that can be divided by 
# each of the numbers from 1 to 10 without any remainder.
# What is the smallest positive number that is evenly 
# divisible by all of the numbers from 1 to 20?

divisible = (2..20).to_a

(2520..10000).each do |n|
    teste = []
    divisible.each do |d|
        if n % d == 0
            teste << n
        end
        if teste.count > 18
            p n
        end
    end        
end