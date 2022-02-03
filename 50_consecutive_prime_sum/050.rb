# Problem 50
# Which prime, below one-million, can be written as the sum of the most consecutive primes?

require 'prime'

def find_sum_below(n)
     
    prime_nums = Prime.each(n).to_a

    controle = Hash.new
    sum = 0
    prime_nums.each do |n|
        i = 1
        num = (sum += n)
        if prime_nums.include?(num)
            control[num] = i
        end
        i += 1
    end
    control
end
p find_sum_below(10000)


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