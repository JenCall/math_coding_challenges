# Problem 12
# What is the value of the first triangle number to have over five hundred divisors?

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

p sum_previous_nums
