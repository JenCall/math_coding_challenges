# Problem 26
# Find the longest recurring cycle in its decimal fraction part.

# first solution - works for the example
def find_decimal(n)
    decimals = []
    (2..n).each do |n|
        num = (1 / n.to_f)
        decimals << num
    end
    p decimals
    find_recurring_cycle(decimals)
end

def find_recurring_cycle(decimals)
    recurring_nums = []
    decimals.each do |n|
        recurring_nums << n.to_s.split("").uniq.count - 2
    end
    i = recurring_nums.max
    p i
    p recurring_nums.find_index(i) + 2
end

find_decimal(1000)

# net solution
puts (0..1000).map { |d| 
  (1..d).detect(lambda{0}) { |t| (10**t % d) == 1 } 
}.each_with_index.max[1]