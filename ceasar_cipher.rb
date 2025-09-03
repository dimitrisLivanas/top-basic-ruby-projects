def caesar_cipher(string, shift_factor)
  string.chars.map do |char|
    new_ord = char.ord + shift_factor
    if ("a".."z").cover?(char)
      if new_ord > "z".ord
        (new_ord - 26).chr
      else
        new_ord.chr
      end
    elsif ("A".."Z").cover?(char)
      if new_ord > "Z".ord
        (new_ord - 26).chr
      else
        new_ord.chr
      end
    else
      char
    end
  end.join
end

p caesar_cipher("What a string!", 27)
