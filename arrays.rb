def pos(i,word)
    pos = 0
    if word[i] == "a"
        pos = 0
    elsif word[i] == "b"
        pos = 1
    elsif word[i] == "c"
        pos = 2
    elsif word[i] == "d"
        pos = 3
    elsif word[i] == "e"
        pos = 4
    elsif word[i] == "f"
        pos = 5
    elsif word[i] == "g"
        pos = 6
    elsif word[i] == "h"
        pos = 7
    elsif word[i] == "i"
        pos = 8
    elsif word[i] == "j"
        pos = 9
    elsif word[i] == "k"
        pos = 10
    elsif word[i] == "l"
        pos = 11
    elsif word[i] == "m"
        pos = 12
    elsif word[i] == "n"
        pos = 13
    elsif word[i] == "o"
        pos = 14
    elsif word[i] == "p"
        pos = 15
    elsif word[i] == "q"
        pos = 16
    elsif word[i] == "r"
        pos = 17
    elsif word[i] == "s"
        pos = 18
    elsif word[i] == "t"
        pos = 19
    elsif word[i] == "u"
        pos = 20
    elsif word[i] == "v"
        pos = 21
    elsif word[i] == "w"
        pos = 22
    elsif word[i] == "x"
        pos = 23
    elsif word[i] == "y"
        pos = 24
    elsif word[i] == "z"
        pos = 25
    end
    return pos
end


def caesar(word, shift)
    char = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
    new_word = ""
    pos = 0
    i = 0
    while i < word.size 
        newPos = pos(word[i]) + shift
        if pos(i,word)+shift > 25
            newPos = (pos(i,word) + shift) - 26
        end
        new_word[i] = char.at(newPos)
        i = i + 1
    end
    return new_word
end

puts caesar("pizza",1)