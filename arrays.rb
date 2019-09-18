

def caesar(word, shift)
    char = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
    new_word = ""
    pos = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25]
    i = 0
    while i < word.size 
        newPos = pos.at(word[i]) + shift
        if pos(i,word)+shift > 25
            newPos = (pos(i,word) + shift) - 26
        end
        new_word[i] = char.at(newPos)
        i = i + 1
    end
    return new_word
end

puts caesar("pizza",1)