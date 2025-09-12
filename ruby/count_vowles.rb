def count_vowels(str)
  vowels = ['a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U']
  count = 0
  str.chars.each do |ch|
    count += 1 if vowels.include?(ch)
  end
  count
end

count_vowels('This is string aeiou')