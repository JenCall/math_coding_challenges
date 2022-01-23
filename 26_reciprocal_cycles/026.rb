# Problem 26
# Find the longest recurring cycle in its decimal fraction part.

def find_decimal(n)
    decimals = []
    (2..n).each do |n|
        num = (1 / n.to_f)
        decimals << num
    end
    p decimals
end

def
end

find_decimal(10)