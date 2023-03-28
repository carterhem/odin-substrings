dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]


def substrings(string, dictionary)
  # handle any capitals/characters in original string
  string = string.downcase.delete "!" "?" ","
  string_array = string.split(" ")
  
  new_array = []
  # puts "string_array #{string_array}"
  
  # loop through words in string/dictionary
  string_array.each do |string_item|
    dictionary.each do |dictionary_item|
      if string_item.include?(dictionary_item)
        new_array.push(dictionary_item)
      end
    end
  end

  # use reduce on new array to create/puts a hash
  created_hash = new_array.reduce(Hash.new(0)) do |key, value|
    key[value] += 1
    key
  end
  p created_hash

end

substrings("below", dictionary)
substrings("Howdy partner, sit down! How's it going?", dictionary)