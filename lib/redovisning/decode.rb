require_relative "../functions"

d =
n =
encoded_message = ""


private_key = [d, n]
decoded_message = decode(encoded_message, private_key[0], private_key[1])



puts "Encoded message: #{encoded_message}"
puts "Decoded message: #{decoded_message}"
