#Valid Palindrome (LeetCode #125)
def is_palindrome(s)
  reverse_arr = []
  arr = s.downcase.gsub(/[^a-z0-9]/, "").chars
  reverse_arr << arr.pop while arr.length > 0
  s == reverse_arr.join
end

is_palindrome("A man, a plan, a canal: Panama")