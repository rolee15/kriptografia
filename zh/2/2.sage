import random

def gen():
	list = ['A', 'D', 'F', 'G', 'V', 'X']
	pairs = [str(a + b) for a in list for b in list]
	alphabet = [*"abcdefghijklmnopqrstuvwxyz0123456789"]
	random.shuffle(alphabet)
	output = []
	for a, b in zip(pairs, alphabet):
		output.append((a, b))
	return output 

def enc(m, k):
	ret = ""
	for char in m:
		r = search_char(char, k)
		ret += r
	return ret

def dec(c, k):
	ret = ""
	for i in range(0, len(c), 2):
		r = search_key(c[i:i+2], k)
		ret += r
	return ret

def search_char(c, k):
	for (a, b) in k:
		if (b == c):
			return a
	return ""

def search_key(key, k):
	for (a, b) in k:
		if (a == key):
			return b
	return ""

k = gen()
s = 'a'
for (a, b) in k:
	FOUND = ""
	if (b == s):
		FOUND = " FOUND"
	print(a + ": " + b + FOUND)
c = search_char(s, k)
print(c)

encrypted = enc("attack at 10 pm", k)
print(encrypted)

decrypted = dec(encrypted, k)
print(decrypted)
