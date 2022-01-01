# Problem 04 - largest palindrom number.

# 9009 = 91 × 99.

max = 999 * 999
min = 100 * 100

new_array = []
(min...max).each do |n|
    if n == n.to_s.reverse.to_i
        new_array << n
    end    
end

p new_array.max