# Problem 22

input = File.open("names.txt", 'r')
data = input.gets.scan(/\w+/).sort
teste = ["COLIN"]

dictionary = { a: 1, b: 2, c: 3, d: 4, e: 5, f: 6, g: 7, h: 8, i: 9, j: 10, k: 11, l: 12, m: 13, n: 14, o: 15, p: 16, q: 17, r: 18, s: 19, t: 20, u: 21, v: 22, x: 23, z: 24, w: 25, y:26 }
# dictionary = {}
# value = 1
# ('A'..'Z').each do |letter|
#     dictionary[letter] = value
#   value += 1
# end
# p dictionary

teste.each do |name|
    sum = 0
    name.split("").each do |letter|
        p letter
        p dictionary[:letter]
        # if letter != nil
        #     sum += dictionary[letter]
        # end

    end
end