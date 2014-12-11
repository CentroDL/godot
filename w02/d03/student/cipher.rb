class Cipher
  #caesar cipher

  def self.encode(word)
    plain = 'abcdefghijklmnopqrstuvwxyz'.split('')
    cipher = 'nopqrstuvwxyzabcdefghijklm'.split('')

    cipher_hash = plain.zip(cipher).to_h
    cipher_hash[" "] = " "

    encoded_arr = word.split('').map { |x| cipher_hash[x] }

    #the return string is the
    encoded_arr.join('')
  end

end
