def is_valid(s)
  stack = []
  mapping = { '}' => '{' , ']' => '[', ')' => '('}

  s.chars.each do |char|
    if mapping.values.include?(char)
      stack.push(char)
    elsif mapping.keys.include?(char)
      return false if stack.empty || stack.pop != mapping[char]
    end
  end

  stack.empty?
end
