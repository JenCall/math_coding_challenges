# Problem 09

# A Pythagorean triplet is a set of three natural numbers, a < b < c, for which, a2 + b2 = c2
# For example, 32 + 42 = 9 + 16 = 25 = 52.
# There exists exactly one Pythagorean triplet for which a + b + c = 1000. Find the product abc.

def square_num(n)
    square = (1..n).to_a.map { |n| n * n }
    find_triple(square)
end

def find_triple(list)
    new_list = []
    list.each_with_index do |n, index|
        if list[index + 1] == nil 
            break
        elsif (n + list[index + 1]) == list[index + 2]
            new_list << n
            new_list << list[index + 1]
            new_list << list[index + 2]
        end
    end
    new_list.each_slice(3).map { |e| e.inject(:+) }
end

p square_num(100)