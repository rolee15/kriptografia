import random

def pub(p, q):
	n = p * q
	relative_primes_arr = n.coprime_integers(n)
	rnd_idx = random.randrange(0, len(relative_primes_arr))
	return (n, relative_primes_arr[rnd_idx]) 

def euler(p, q):
	return (p - 1) * (q - 1)

P = 53
Q = 59

print("Select two primes: P = " + str(P) + " Q = " + str(Q))
N, e = pub(P, Q)
print("Public key is: N = " + str(N) + " e = " + str(e))

phi = euler(P, Q)
print(phi)

d = inverse_mod(e, phi)
