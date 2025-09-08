#takes string and returns it reversed
def reverse_string(str)
  return "" if str.nil?
  str_arr = str.chars
  reversed_arr = []
  reversed_arr << str_arr.pop while str_arr.length > 0
  reversed_arr.join
end

puts reverse_string("hello")