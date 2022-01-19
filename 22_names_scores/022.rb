# Problem 22

input = File.read("names.txt").split
input.each do |char|
    char.replace(/\\/g, '');
end