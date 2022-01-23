# Problem 26
# Find the longest recurring cycle in its decimal fraction part.

def find_decimal(n)
    decimals = []
    (2..n).each do |n|
        num = (1 / n.to_f)
        decimals << num
    end
    find_recurring_cycle(decimals)
end

def find_recurring_cycle(decimals)
    recurring_nums = []
    decimals.each do |n|
        recurring_nums << n.to_s.split("").uniq.count - 2
    end
    i = recurring_nums.max
    p recurring_nums.find_index(i) + 2
end

find_decimal(10)