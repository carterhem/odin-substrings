dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]


def substrings(string, dictionary)
  # handle any capitals in string: to lowercase
  string = string.downcase.delete "!" "?"
  new_array = []
  string_array = string.split(" ")
  puts "string_array #{string_array}"
  # loop through words in dictionary
  dictionary.each do |word|
    # check if any of them match string OR include string
    # if they do push them to a new array
    if word == string
      new_array.push(word)
      p "word = string #{word}"
    elsif string.include? word
      # something is wrong here
      # need to check each word in string to see if it includes item from dictionary, not just overall string
      new_array.push(word)
      p "string.include? word #{word}"
    end
    new_array
  end
  created_hash = new_array.reduce(Hash.new(0)) do |key, value|
    key[value] += 1
    key
  end
  p created_hash
  # use reduce on new array to create/puts a hash
end

# substrings("below", dictionary)
substrings("Howdy partner, sit down! How's it going?", dictionary)

# How else could i do this?
# 1. separate the string into different words, remove punctuation and loop through that
