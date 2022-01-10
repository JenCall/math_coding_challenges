# Problem 12


sum_previous_nums = Array.new
(1..10).each do |n|
    sum_previous_nums << (1..n).to_a.reduce(0, :+)
end

result = Hash.new
sum_previous_nums.each do |n|
    array = []
    (1..n).each do |i|
        array << i if n % i == 0 
        if (array.count > 6)
            result[n] = array
            break
        end
    end
end
puts result

# rersult_1 = result.values

# puts "start calculating third part"
# rersult_1.each_with_index do |array, index|
#     if array.count == 200
#     p index
#     break
#     end
# end
