require_relative 'functions'

def startup(message, e, p, q)
  #if !relative_prime(p*q, e)
  #  raise ArgumentError.new("e must be relative prime to p*q")
  #end

  n = p*q
  phi_n = (p-1)*(q-1)
  d = mod_inverse(e, phi_n)

  return [message, e, d, n, phi_n]
end

def encode(message, e, n)
  arr = []
  message.bytes.each do |byte|
    arr << mod_exp(byte, e, n).to_i
  end

  arr
end

def decode(y, d, n)
  arr = []
  y.each do |byte|
    arr << mod_exp(byte, d, n).to_i
  end

  arr.pack("C*")
end

def run(message, e, p, q)
  message, e, d, n, phi_n = startup(message, e, p, q)

  p mod_exp(mod_exp(225, e, n), d, n)

  encoded = encode(message, e, n)
  p encoded
  decoded = decode(encoded, d, n)
  p decoded
end

run("hello", 3, 19, 11)
