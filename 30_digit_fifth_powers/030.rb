# Problem 30
# Find the sum of all the numbers that can be written as the sum of fifth powers of their digits.

def form_array(n)
    integers = (1000..n).to_a
    sum_fifth_power(integers)
end

def sum_fifth_power(list)
    fifth_powers = Array.new
    list.each do |n|
        sum = 0
        (n.to_s.split("").map(&:to_i)).each { |n| sum += n ** 5 }
        fifth_powers << n if (n == sum)
    end
    puts "Answer: #{fifth_powers.sum}"
end

form_array(500000)