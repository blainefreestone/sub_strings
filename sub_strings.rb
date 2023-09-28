def sub_strings(string, substrings)
    words = string.split(" ") # Splits string into array of individual words as strings.
    words.reduce(Array.new) {|result_array, word|}
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
p sub_strings("below", dictionary)