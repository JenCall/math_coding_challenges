# Problem 07

require 'prime'
def find_10001_Prime(n)
    prime_nums = []
    Prime.each(200000) do |prime|    # if 5 dgs -> pf <= 2dgs, so 12dgs -> <= 5dgs
        prime_nums << prime
    end  
    p prime_nums[n]
end

find_10001_Prime(10000)