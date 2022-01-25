# Problem 30
# Find the sum of all the numbers that can be written as the sum of fifth powers of their digits.

# My first solution
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

# shorter solution
def sum_fifth_power_2(n)
    p (2..n).select { |i| i == i.to_s.each_char.map { |d| d.to_i**5 }.reduce(:+) }.reduce(:+)
end
sum_fifth_power_2(500000)