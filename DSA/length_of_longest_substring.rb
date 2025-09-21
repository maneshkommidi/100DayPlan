#Longest Substring Without Repeating Characters (LeetCode #3)
def length_of_longest_substring(s)
  char_index_map = {}
  longest = 0
  start_idx = 0
  s.char.each_with_index do |ch, i|
    if char_index_map.key?(ch) && char_index_map[ch] >= start_idx
      start_idx = char_index_map[ch] + 1 #assigning the start_idx value when char is in hash keys and value is more than start_idx
    end
    char_index_map[ch] = i # building hash
    longest = [longest, i - start_idx + 1].max # picking up the longest value
  end
  longest
end

char_index_map = {a : 0, b: 1, c: 2, a: 3}
longest = 3

length_of_longest_substring('abcaba')