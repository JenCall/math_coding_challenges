# Problem 22

input = File.open("names.txt", 'r')
data = input.gets.scan(/\w+/).sort
