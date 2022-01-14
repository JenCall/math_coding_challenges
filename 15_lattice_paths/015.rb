# Problem 15
# How many such routes are there through a 20×20 grid?

def find_paths
    puts (1..40).inject(:*) / (1..20).inject(:*) ** 2
end    

find_paths