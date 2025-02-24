require_relative "functions"

e = 7
p = 61
q = 53
message = "Hello, World!"



public_key, private_key = generate_keys(e, p, q)
encoded_message = encode(message, public_key[0], public_key[1])
hacked_key = hack_key(public_key[0], public_key[1])
decoded_message = decode(encoded_message, private_key[0], private_key[1])
hacked_message = decode(encoded_message, hacked_key[0], hacked_key[1])



puts "Public key: #{public_key}"
puts "Private key: #{private_key}"

puts "Encoded message: #{encoded_message}"
puts "Decoded message: #{decoded_message}"

puts "Hacked key: #{hacked_key}"
puts "Hacked message: #{hacked_message}"
