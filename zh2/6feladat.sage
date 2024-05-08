import random

def gen():
    p = random_prime(2^12-1, false, 2^11)
    g = 65336
    x = random.randint(2, p - 1)
    y = g ** x % p
    return (x, (p, g, y))

def enc(m, pub):
    (p, g, y) = pub
    r = random.randint(2, p - 2)
    return (g ** r % p, m * y ** r % p)

def dec(c1, c2, p, x):
    return (c2 * c1 ** (p - 1 - x)) % p

m = 10
(priv, pub) = gen()
(c1, c2) = enc(m, pub)

(p, g, y) = pub
result = dec(c1, c2, p, priv)

print(result) # 10