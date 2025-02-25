require_relative "../functions"

encoded_message =
private_key = [2753, 3233]



decoded_message = decode_num(encoded_message, private_key[0], private_key[1])



puts "Encoded message: #{encoded_message}"
puts "Decoded message: #{decoded_message}"
