require_relative "../functions"

encoded_message =
public_key = [3, 230161]


hacked_key = hack_key(public_key[0], public_key[1])
hacked_message = decode_num(encoded_message, hacked_key[0], hacked_key[1])



puts "Public key: #{public_key}"

puts "Encoded message: #{encoded_message}"

puts "Hacked key: #{hacked_key}"
puts "Hacked message: #{hacked_message}"
