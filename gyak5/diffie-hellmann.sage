import random

P = random_prime(1000000)
G = random_prime(1000000)

def gen():
	return (P, G)

def pub(g, secret, p):
	return g ** secret % p

def private(secret, pub, p):
	return pub ** secret % p

(p, g) = gen()
print("P: " + str(p))
print("G: " + str(g))

a = random.randint(2, P)
b = random.randint(2, P)
print("Alice selected a secret: a = " + str(a))
print("Bob selected a secret: b = " + str(b))

alice_pub = pub(g, a, p)
bob_pub = pub(g, b, p)
print("Alice sends Bob the pub: " + str(alice_pub))
print("Bob sends Alice the pub: " + str(bob_pub))

alice_key = private(a, bob_pub, p)
bob_key = private(b, alice_pub, p)
print("Alice computes symmetric key: " + str(alice_key))
print("Bob computes symmetric key: " + str(bob_key))
