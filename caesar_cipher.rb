#Caesar Cipher

def caesar_cipher(text, shift, result = "")
  shift = shift%26
  text.split("").each {
    |letter|
    letter = letter.ord
      if letter.between?(65, 90)
        letter += shift
        letter > 90 ? result += (letter-26).chr : result += letter.chr
      elsif letter.between?(97, 122)
        letter += shift
        letter > 122 ? result += (letter-26).chr : result += letter.chr
      else
        result += letter.chr
      end
  }
  result
end

puts caesar_cipher("Texto a cambiar, alto secreto!!", 734)
