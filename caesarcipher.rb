$alphabet = ('a'..'z').to_a
def caesar_cipher (string, shift_number)
    arr = string.split("")
    p arr
    arr.each do |letter|

        if !$alphabet.any? {|l| l == letter.downcase}
            p "letter is: #{letter}"
        else
            letter_index = $alphabet.index(letter.downcase)
            p "letter: #{letter} index: #{letter_index}"
            replacement_index = letter_index + shift_number
            p "replace is: #{replacement_index}"
            new_num = replacement_index - $alphabet.length
            p "new num is: #{new_num}"

            if replacement_index > 25
                replacement_index = new_num
                if letter == letter.upcase
                    letter.replace($alphabet[replacement_index].upcase)
                    p "replaced upper case letter"
                else
                    letter.replace($alphabet[replacement_index])
                end
            else
                if letter == letter.upcase
                    letter.replace($alphabet[replacement_index].upcase)
                    p "replaced upper case letter"
                else
                    letter.replace($alphabet[replacement_index])
                end
            end

        end

    end

    p arr
    new_arr = arr.join
    p new_arr
    
end
caesar_cipher("What a string!", 5)