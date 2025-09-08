#find frequency of words in a sentence
def word_count(sentence, word)
  return 0 if sentence.nil? || word.nil?
  sentence_arr = sentence.split
  count = 0
  sentence_arr.each do |w|
    count += 1 if w == word
  end
  count
end

puts word_count("I felt happy because I saw the others were happy and because I knew I should feel happy, but I wasn't really happy.", "happy")