# Problem 25
# Find fibonacci number with 1000 digits

def find_fibonacci(n)
    fibonacci = [1, 1]
    i = 2
    while i < n 
        fibonacci << fibonacci[-2] + fibonacci[-1]
        i += 1
    end
    find_1000_digits(fibonacci)
end

def find_1000_digits(list)
    list.each do |n|
        if (n.to_s.split("").count == 1000)
            puts "Answer: #{list.find_index(n) + 1}"
            break
        end
    end
end

find_fibonacci(10000)