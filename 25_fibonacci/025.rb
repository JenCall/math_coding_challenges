# Problem 25
# Find fibonacci number with 1000 digits

def find_fibonacci(n)
    num_1 = 1
    num_2 = 2
    fibonacci = [1, 1]
    i = 1
    while fibonacci[i] < n
        num = fibonacci[-2] + fibonacci[-1]
        fibonacci << num
        i += 1
    end
    puts fibonacci
    puts "finish"
end

find_fibonacci(12)