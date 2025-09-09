def prime_nums(n)
  prime_nums = []
  (0..n).each do |i|
    prime_nums << i if is_prime?(i)
  end
  prime_nums
end

def is_prime?(num)
  return false if num < 2
  (2..Math.sqrt(num)).each do |i|
    return false if num % i == 0
  end
  true
end

puts prime_nums(100)



