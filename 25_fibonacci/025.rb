# Problem 25
# Find fibonacci number with 1000 digits

def find_fibonacci(n)
    fibonacci = [1, 1]
    i = 2
    while i < n
        num = fibonacci[-2] + fibonacci[-1]
        fibonacci << num
        i += 1
    end
    p fibonacci
    puts "finish"
end

find_fibonacci(12)