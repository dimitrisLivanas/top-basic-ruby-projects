dictionary = [
  "below", "down", "go",
  "going", "horn", "how",
  "howdy", "it", "i", "low",
  "own", "part", "partner", "sit"
]

def substrings(string, dictionary)
  string = string.downcase
  dictionary.each_with_object({}) do |word, result|
    count = string.scan(word).length
    result[word] = count if count > 0
  end
end

# Tests
p substrings("below", dictionary)
p substrings("Howdy partner, sit down! How's it going?", dictionary)
