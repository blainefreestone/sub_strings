def sub_strings(string, substrings)
    string.downcase!

    substrings.reduce(Hash.new(0)) do |result_hash,word|
        count = string.scan(/(?=#{word})/).count
        count > 0 ? result_hash[word] = count  : result_hash

        result_hash
    end
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
p sub_strings("Howdy partner, sit down! How's it going?", dictionary)