# Problem 17

require 'humanize'

def coverter(n)
    concats( (1..n).to_a.map { |i| i.humanize } )
end

def concats(words)
    count_letters(words.flatten)
end

def count_letters(words)
    p words.reduce(:concat).tr("-","").tr(" ","").split("").count
end

coverter(1000)