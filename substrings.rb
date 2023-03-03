# defines string to test and dictionary to test against
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
test_string = "Howdy partner, sit down! How's it going?"

# enumerates through the desired string and returns a hash containing the number of times each substring appeared inside the test string
def substring (string, array)
    string = string.downcase.split(" ")
    string.reduce(Hash.new(0)) do |output, word_in_string|
        array.reduce(output) do |output, word_in_dictionary|
            if word_in_string.include?(word_in_dictionary)
                output[word_in_dictionary] += 1
            end
            output
        end
        output
    end
end

p test_string
p substring(test_string, dictionary)