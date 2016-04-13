# 4.6 More Methods

# input string whole alphabet

library = "abcdefghijklmnopqrstuvwxyz"

library[0..2]


# Define a method that matches the input to the library string
# pull the index of the letters individually
# advance the indices by 1
# print the new string
# include an exception for z to a



def encrypt(str)
  index = 0
  password = str
  
  while index < password.length
      
    if password[index] == "z"
        password[index] = "a"
      index += 1
    elsif password[index] == " "
      password[index] = password[index] 
      index += 1
    else
      password[index] = password[index].next
      index += 1
    
    end
  
  end
  encrypted_phrase = password
  puts "#{encrypted_phrase}"


end

#Define the library
#still use encrypted length while if loop
#We want to take the letter of the encrypted phrase and match it to the index of the library
#subrtract the library idex number by 1 and pull the corresponding letter and make that equal to the encrypted letter 

def decrypt(str)
    index = 0
    encrypted_phrase = str
    library = "abcdefghijklmnopqrstuvwxyz"

  while index < encrypted_phrase.length

    if encrypted_phrase[index] == "a"
          encrypted_phrase[index] = "z"
        index += 1
    elsif encrypted_phrase[index] == " "
        encrypted_phrase[index] = encrypted_phrase[index]
        index += 1
    else
        encrypted_phrase[index] = library[library.index(encrypted_phrase[index])-1]
        index += 1

    end

  end
  
  password = encrypted_phrase
  
  puts "#{password}"

end

encrypt("abc")
encrypt("zed")
encrypt("z sodijfoe")
decrypt("bcd")
decrypt("afe")
decrypt("a psodfijoe")  
decrypt(encrypt("swordfish"))