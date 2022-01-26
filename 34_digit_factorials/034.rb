# Problem 34
# Find the sum of all numbers which are equal to the sum of the factorial of their digits.

# My first Solution
def find_factorial(num)  
    factorials = 0
    
    (144..num).each do |n|
        array_of_nums = n.to_s.split("").map { |i| i.to_i }
        sum = 0
        array_of_nums.each { |j| sum += (1..j).inject(:*) || 1 }
        factorials += sum if sum == n 
    end
    puts "Answer: #{factorials}"
end
find_factorial(50000)

# better solution found
puts (0..50000).select { |i|
  i.to_s.length > 1 && i == i.to_s.each_char.map { |d| (1..d.to_i).reduce(1, :*) }.reduce(:+)
}.reduce(:+)

# take away: inject