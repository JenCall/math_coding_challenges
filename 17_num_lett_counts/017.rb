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
    sum_letters(concatenated)
end

def sum_letters(words)
    list = words.uniq
    
    p list
end


coverter(5)