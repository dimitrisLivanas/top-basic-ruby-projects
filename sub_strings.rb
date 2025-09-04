dictionary = [
  "below", "down", "go",
  "going", "horn", "how",
  "howdy", "it", "i", "low",
  "own", "part", "partner", "sit"
]

def substrings(string, dictionary)
  string = string.downcase
  result = {}
  dictionary.each do |word|
    count = string.scan(word).length
    result[word] = count if count > 0
  end
  p result
end

# Tests
substrings("below", dictionary)
substrings("Howdy partner, sit down! How's it going?", dictionary)
