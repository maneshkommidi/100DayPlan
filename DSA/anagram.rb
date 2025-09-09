def is_anagram(s, t)
  return false if s.size != t.size
  for i in 'a'..'z'
    return false if s.count(i) != t.count(i)
  end
  true
end