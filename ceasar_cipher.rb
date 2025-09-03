def caesar_cipher(string, shift_factor)
  string.chars.map do |char|
    if ("a".."z").cover?(char)
      ((char.ord - "a".ord + shift_factor) % 26 + "a".ord).chr
    elsif ("A".."Z").cover?(char)
      ((char.ord - "A".ord + shift_factor) % 26 + "A".ord).chr
    else
      char
    end
  end.join
end

# Tests
p caesar_cipher("What a string!", 5)
p caesar_cipher("xyz", 3)
p caesar_cipher("ABC", 27)
