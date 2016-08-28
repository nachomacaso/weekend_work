# Complete the method called find_longest_word, which will accept a string as a parameter (usually a sentence), and return another string that will be the longest word in that sentence.

def find_longest_word(sentence)
  sentence_without_question = sentence.delete "?"
  split_array = sentence_without_question.split(' ')
  longest_word_so_far = ''
  split_array.each do |word| 
    if word.length > longest_word_so_far.length
      longest_word_so_far = word
    end
  end
  longest_word_so_far
end

# Driver code - don't touch anything below this line.
puts "TESTING find_longest_word..."
puts

result = find_longest_word("What is the longest word in this phrase?")

puts "Your method returned:"
puts result
puts

if result == "longest"
  puts "PASS!"
else
  puts "F"
end