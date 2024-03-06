def generate_Z_m(m):
	arr = []
	for i in range (0, m):
		arr.append(i)
	return arr

def generate_Z_star_m(m):
	return m.coprime_integers(m)

def egcd(a, b):
	if a == 0:
		return (b, 0, 1)
	else:
        	g, y, x = egcd(b % a, a)
        	return (g, x - (b // a) * y, y)

def modinv(a, m):
	g, x, y = egcd(a, m)
	if g != 1:
		raise Exception("Modular inverse doesn't exist!")
	else:
		return x % m

def is_generator(g, p):
	set = []
	for i in range(0, p - 2):
		x = pow(g, i) % p
		if x in set:
			return false
		else:
			set.append(x)
	return true

def generate_generators(p):
	set = []
	for i in range(2, p - 1):
		if is_generator(i, p):
			set.append(i)
	return set

m = 5
Z = generate_Z_m(m)
Z_star = generate_Z_star_m(m)
mod_inv = modinv(9, 5)
generator = is_generator(4, 5)
generators = generate_generators(m)

print(Z)
print(Z_star)
print(mod_inv)
print(generator)
print(generators)

