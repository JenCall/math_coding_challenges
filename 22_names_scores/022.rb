# Problem 22

#first idea
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

# correct solution

def alpha_score_for_name(name, alpha_values)
    score = 0
    name.split("").each do |alphabet|
      score += alpha_values[alphabet]
    end
    return score
  end
  
  names = []
  names_string = ""
  File.open("names.txt").each do |line|
   names_string = line
  end
  names_string.split(",").each do |name|
    names << name.sub("\"", "").sub("\"", "")
  end
  names.sort!
  
  # generate the alphabetical values hash
  
  alpha_values = {}
  value = 1
  ('A'..'Z').each do |alphabet|
    alpha_values[alphabet] = value
    value += 1
  end
  
  sum_of_scores = 0
  position = 1
  names.each do |name|
    sum_of_scores += position * alpha_score_for_name(name, alpha_values)
    position += 1
  end
  
  puts "Answer: #{sum_of_scores}"