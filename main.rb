def substring(string, _dictionary)
  no_punct = rm_punctuation(string)
  no_punct
  # TODO: split_string each include? dictionary[index]
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
