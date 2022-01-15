# Problem 17

gem 'humanize', '~> 1.1'

require 'humanize'

def coverter(n)
    words = Array.new
    (1..n).to_a.each { |i| words << i.humanize }
    p words
    concats(words)
end

def concats(words)
    concatenated = words.flatten
    sum_letters(concatenated)
end

def sum_letters(words)
    # list = words
    p words.reduce(:concat).tr("-","").tr(" ","").split("").count

end


coverter(1000)