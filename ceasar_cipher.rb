def caesar_cipher(string, shift_factor)
  # the below taken from https://stackoverflow.com/questions/6343257/how-to-check-string-contains-special-character-in-ruby
  special = "?<>',[]}{=-)(*&^%$#`~{}!"

  result = string.chars.map do |char|
    if char == " " || special.include?(char)
      char
    else
      (char.ord + shift_factor).chr
    end
  end

  p result.join
end

caesar_cipher("What a string!", 5)
