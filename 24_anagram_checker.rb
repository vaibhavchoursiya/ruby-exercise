# Anagram

=begin
  check both string have same length
  take one string and compare its char to other 
  string character check it exist or not.
=end

=begin
  Take each character form string
  if that character exist in another string
  then remove it from string
=end

def is_anagram?(string_1, string_2)
  if string_1.size != string_2.size
    return false
  end

  copy_string = ""
  for i in string_1.size

    char = string_1[i]
    for j in string_2.size
      if char == string_2[j]
        copy_string += char    
      end
    end
  end

end

print is_anagram?("apple", "elppa")