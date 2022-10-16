def substring(string, dictionary)
  no_punct = rm_punctuation(string)
  split_string = no_punct.split(' ')
  hash = Hash.new(0)
  dictionary.each do |subword|
    split_string.each do |word|
      if word.include?(subword)
        hash[subword] += 1
      end
    end
  end
  hash
end

# returns a string without any puncuation
def rm_punctuation(string)
  regex = /\p{Punct}/
  split_string = string.split('')
  without_punct = split_string.map do |char|
    char unless char.match?(regex)
  end
  without_punct.join('')
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

puts substring("Howdy partner, sit down! How's it going?", dictionary)
