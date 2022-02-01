# Problem 48
# Find the last ten digits of the series, 1^1 + 2^2 + 3^3 + ... + 1000^1000.

def sum_self_powers(n)
    sum = 0
    (1..n).each do |i|
        sum += i ** i
    end
    puts "Answer: #{sum.to_s[-10...-1]}"
end

sum_self_powers(10)