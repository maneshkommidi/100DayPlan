#49. Group Anagrams
def group_anagrams(strs)
  strs.group_by { |str| str.chars.sort.join }.values
end
