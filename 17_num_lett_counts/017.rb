# Problem 17

gem 'humanize', '~> 1.1'

require 'humanize'

def coverter(n)
    words = Array.new
    (1..n).to_a.each { |i| words << i.humanize }
    
    concats(words)
end

def concats(words)
    concatenated = words.flatten
    # sum_letters(concatenated)
end

def sum_letters()
    words = ["three", "three", "five", "four", "four"]
    list = words.uniq
    
    p list
end

sum_letters
# coverter(5)