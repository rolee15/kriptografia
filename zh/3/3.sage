def is_carmichael(n):
	primes = n.coprime_integers(n)
	for b in primes:
		rem = (b ** (n - 1)) % n
		if (rem != 1):
			return false
	return true

carmichaels = [561, 1105, 1729, 2465, 2821, 6601]
non_carmichaels = [28, 201, 1111, 6541, 9999]

print("Carmichael numbers:")
for n in carmichaels:
	print(str(n) + ": " + str(is_carmichael(n)))

print("Not carmichaels:")
for n in non_carmichaels:
	print(str(n) + ": " + str(is_carmichael(n)))
