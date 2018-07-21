HASH_INDEX = {"a" => 1, "b" => 2, "c" => 3, "d" => 4, "e" => 5, "f" => 6, "g" => 7, "h" => 8, "i" => 9, "j" => 10, "k" => 11, "l" => 12, "m" => 13, "n" => 14, "o" => 15, "p" => 16, "q" => 17, "r" => 18, "s" => 19, "t" => 20, "u" => 21, "v" => 22, "w" => 23, "x" => 24, "y" => 25, "z" => 26}

str_array = []

def encrypt(str,shift)
  upcase_flag = false
  str_array = str.split("")
  str_array.map! do |letter|

    letter == letter.upcase ? upcase_flag = true : upcase_flag = false
    letter.downcase!


    if letter =~ /[a-c]/
      index_no = HASH_INDEX[letter] + shift
      index_no > 26 ? index_no -= 26 : index_no
      letter = HASH_INDEX.key(index_no)
      upcase_flag == true ? letter.upcase : letter

    else
      letter
    end

  end

  puts str_array.join("")

end



encrypt("Hello wOr%d hEllo",10)
