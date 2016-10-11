def canonical(word)
  word.chars.sort.join
end
 
def are_anagrams?(word1, word2)
  canonical(word1) == canonical(word2)
end
 
def anagrams_for(word, dictionary)
  anagrams = []
  dictionary.each do |w|
    if are_anagrams?(w,word) 
      # canonical(w) == canonical(word)
      anagrams  << w
    end
  end
  anagrams
end 
 
 
p canonical("mora") == "amor"
p are_anagrams?("roma", "mora") == true
p anagrams_for("ramo", ["amor", "pluma","mora", "armo", "casa", "perro"]) == ["amor", "mora", "armo"]