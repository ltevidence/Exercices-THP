def translate(text)
    text.split(" ").map { |word| rearrange(word) }.join(" ") 
  end
  
def rearrange(pig_word)
    match = pig_word.match(/^((?:qu|[bcdfghjklmnpqrstvwxz])*)(.*)$/)
    match ? match[2] + match[1] + "ay" : pig_word
end