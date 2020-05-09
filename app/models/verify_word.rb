module VerifyWord
def check_for_bad_words(sentence)
  words_array = sentence.downcase.split(" ")
  bad_words = ["bad","poor"]
   words_array.each do |word|
     if bad_words.include? word
       return true
     end
   end
  return false
end
end