# Problem 35
# How many circular primes are there below one million?

require 'prime'

def find_rotations(n)
    nums = n.to_s.chars
    nums.map { nums.rotate.join.to_i }
end

# total = Prime.each(1000000).select do |n|
#     find_rotations(n) {|d| Prime.prime?(d) }
# end
# p total.count
  
puts (1..1000000).select { |i|
  (1..i.to_s.length).all? { |j|
    i.to_s.split('').rotate(j).join('').to_i.prime?
  }
}.count