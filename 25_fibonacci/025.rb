# Problem 25
# Find fibonacci number with 1000 digits

def find_fibonacci(n)
    fibonacci = [1, 1]
    i = 2
    while i < n 
        fibonacci << fibonacci[-2] + fibonacci[-1]
        i += 1
    end
    p fibonacci
end



find_fibonacci(100)