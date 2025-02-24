require_relative "../functions"

e = 17
p = 61
q = 53
message = 314



public_key, private_key = generate_keys(e, p, q)
encoded_message = encode_num(message, public_key[0], public_key[1])



puts "Public key: #{public_key}"
puts "Private key: #{private_key}"

puts "Encoded message: #{encoded_message}"
