def relative_prime(x, y)
  a = gcd(x, y)
  return a == 1
end

def gcd(a, b)
  while b != 0
    a, b = b, a % b
  end
  a
end

def mod_inverse(e, phi_n)
  d = 1
  while (e*d) % phi_n != 1
    d += 1
  end
  d
end

def mod_exp(num, exponent, modulo_base)
  num % modulo_base == 0 ? 0 : num ** exponent % modulo_base
end

#första subbarrayen är public key, andra är private key
def generate_keys(e, p, q)
  if !relative_prime((p-1)*(q-1), e)
    raise ArgumentError.new("e must be relative prime to (p-1)*(q-1)")
  end

  n = p*q
  phi_n = (p-1)*(q-1)
  d = mod_inverse(e, phi_n)

  return[[e, n], [d, n]]
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

def hack_key(e, n)
  p = 2
  while n % p != 0
    p += 1
  end
  q = n / p

  d = mod_inverse(e, ((p-1)*(q-1)))

  return [d, n]
end
