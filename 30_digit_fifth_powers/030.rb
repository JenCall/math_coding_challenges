# Problem 30
# Find the sum of all the numbers that can be written as the sum of fifth powers of their digits.


def find_number(n)
    array_num = (1000..n).to_a
    sum_fifth_power(array_num)
end

def sum_fifth_power(list)
    result = Array.new
    list.each do |n|
        array = n.to_s.split("").map(&:to_i)
        sum = 0
        array.each do |n|
            sum += n ** 5
        end
        if n == sum
            result << n
        end
    end
    p result.sum
end

find_number(500000)