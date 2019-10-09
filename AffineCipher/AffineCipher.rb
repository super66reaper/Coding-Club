def affine_cipher(word, a, b) 
    alp = "abcdefghijklmnopqrstuvwxyz"
    new_word = ""
    word.size.times do |i|
        x = alp.index(word[i])
        shift = (x * a + b) % 26
        new_word += alp[shift]
    end
    return new_word
end

puts affine_cipher("hello", 5, 8)