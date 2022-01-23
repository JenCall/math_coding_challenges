# Problem 26
# Find the longest recurring cycle in its decimal fraction part.

# my first solution
def find_decimal(n)
    decimals = []
    (2..n).each { |n| decimals << (1 / n.to_f) }
    decimals.reverse
    find_recurring_cycle(decimals, n)
end

def find_recurring_cycle(decimals, n)
    recurring_nums = []
    decimals.each { |n| recurring_nums << n.to_s.split("").uniq.count - 2 }
    puts "Answer: #{(n - (recurring_nums.find_index(recurring_nums.max) + 2))}"
end

find_decimal(1000)

# improved solution from the internet
puts (0..1000).map { |d| 
  (1..d).detect(lambda{0}) { |t| (10**t % d) == 1 } 
}.each_with_index.max[1]