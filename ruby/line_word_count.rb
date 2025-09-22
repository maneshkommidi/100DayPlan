file_name = 'test.txt'
line_count = word_count = 0
File.foreach(file_name) do |line|
  line_count += 1
  word_count += line.split.size
end

puts "line_count is #{line_count} and word_count is #{word_count}"