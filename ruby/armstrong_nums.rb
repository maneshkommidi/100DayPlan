#An Armstrong number (also called Narcissistic number) is a number that equals the sum of its own digits each raised to the power of the number of digits.

def armstrong_number?(num)
  return false if num < 0
  return true if num < 10

  digits = num.to_s.chars.map(&:to_i)
  power = digits.length

  sum = digits.sum { |digit| digit ** power }

  sum == num
end

armstrong_number?(153)