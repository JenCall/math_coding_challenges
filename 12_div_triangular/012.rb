# Problem 12
# What is the value of the first triangle number to have over five hundred divisors?

# 01 my solution
def sum_previous_nums
    sum_previous_nums = Array.new
    (1..10).each { |n| sum_previous_nums << (1..n).to_a.reduce(0, :+) }
    over_nhundred_divisors(sum_previous_nums)
end

def over_nhundred_divisors(list)
    result = Hash.new
    list.each do |n|
        array = []
        (1..n).each do |i|
            array << i if n % i == 0 
            if (array.count > 6)
                result[n] = array
                break
            end
        end
    end
    puts result
end

sum_previous_nums

# 02 - Internet solution to study

def divisor_count(number)
    count = 0
    (1..Math.sqrt(number)).each do |n|
        if (number%n) == 0
        count += 1
        end
    end
    count *= 2
    if perfect_square?(number)
        count -= 1
    end
    return count
end
  
def perfect_square?(number)
    number_sqrt = Math.sqrt(number)
    if (number_sqrt - number_sqrt.floor) == 0
        true
    else
        false
    end
end

index = 1
number = 1
prev_number = 0
count = 0
until divisor_count(number) > 500
index += 1
number += index
end

puts "Answer: #{number}"
