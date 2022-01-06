# Problem 09

# There exists exactly one Pythagorean triplet for which a + b + c = 1000. Find the product abc.

# 01 - Brute Force Solution
def is_pythagorean_triplet?(a, b, c)
    true if ((c * c)  == (a * a) + (b * b))
  end

def find_triple_sum(n)
    (1..n).each do |a|
        (a..n).each do |b|
            c = (n - a - b)
            if is_pythagorean_triplet?(a, b, c)
                p (a * b * c)
                break
            end
        end  
    end
end

find_triple_sum(1000)