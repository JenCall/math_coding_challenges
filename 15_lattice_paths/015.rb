# Problem 15
# How many such routes are there through a 20×20 grid?

def find_paths
    puts (1..40).inject(:*) / (1..20).inject(:*) ** 2
end    
find_paths


# Combinatorial Solution 
# much faster O(n) solution
def cout_paths(n)
    result = 1

    (1..n).to_a.each do |i|
        result << (result * (n + i) / i)
    end
    result
end 
cout_paths(2)