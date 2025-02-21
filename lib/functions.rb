def relative_prime(x, y)
  a = gcd(x, y)
  return a == 1
end

def gcd(a, b)
  while b != 0
  end
  a
end

def mod_inverse(e, phi_n)
  d = 0
  while (e*d) % phi_n != 1
    d += 1
  end
  d
end

def mod_exp(num, exponent, modulo_base)
  num % modulo_base == 0 ? 0 : num ** exponent % modulo_base
end
