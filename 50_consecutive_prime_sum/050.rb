# Problem 50
# Which prime, below one-million, can be written as the sum of the most consecutive primes?

require 'prime'

def find_sum_below(n)
    prime_nums = Prime.each(n).to_a
    control = Hash.new
    sum = 0
    i = 1
    prime_nums.each do |n|
        num = (sum += n)
        control[num] = i if prime_nums.include?(num)
        i += 1
    end
    control
end
p find_sum_below(1000)


primes = Prime.each(10000).to_a
longest = []
primes[0..10].each_with_index { |p, i|
  j = i
  begin
    j += 1
    cons = primes[i..j]
    sum = cons.reduce(:+)
    if sum.prime? && cons.length > longest.length
      longest = cons
    end
  end while sum < 1000000
}
puts longest.reduce(:+)