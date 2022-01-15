# Problem 16
# Power digit sum

def sum_power_digits(num, power)
    puts (num ** power).to_s.split("").map { |n| n.to_i }.sum
end
sum_power_digits(2, 1000)