# Problem 34
# Find the sum of all numbers which are equal to the sum of the factorial of their digits.

def find_factorial(num)  
    factorials = 0
    
    (144..num).each do |n|
        num = n.to_s.split("").map { |i| i.to_i }
        sum = 0
        num.each do |j|
            sum += (1..j).inject(:*) || 1
        end
        if sum == n 
            factorials += sum
        end
    end
    p factorials
end

find_factorial(50000)

puts (0..50000).select { |i|
  i.to_s.length > 1 && i == i.to_s.each_char.map { |d| (1..d.to_i).reduce(1, :*) }.reduce(:+)
}.reduce(:+)