# Problem 63
# How many n-digit positive integers exist which are also an nth power?

# Brute Force Solution
def find_power_counts(max)
    digits = []
    (1..max).each do |n|
        (1..max).each do |i|
            num = n ** i
            digits << num if num.to_s.split("").count == i
        end
    end
    puts "Answer: #{digits.count}"
end

find_power_counts(300)