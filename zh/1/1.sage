MIN_ORD = ord('a')
MAX_ORD = ord('z')
LENGTH = MAX_ORD - MIN_ORD + 1

def enc(msg, key):
	result = ""
	for c in msg:
		ordinal = ord(c) + key
		if (ordinal > MAX_ORD):
			ordinal = ordinal % LENGTH + MIN_ORD
		result += chr(ordinal)
	
	return result

def dec(msg, key):
	result = ""
	for c in msg:
		x = dec_step(c, key)
		result += x
	
	return result

def dec_step(c, key):
	if (ord(c) < MIN_ORD or ord(c) > MAX_ORD):
		return c

	ordinal = ord(c) - key
	if (ordinal < MIN_ORD):
		ordinal = ordinal + LENGTH
	return chr(ordinal)
	

encrypted_msg = ".toy lu kzgzy g to mtobor ,kyxaui lu ,yo ytgks iozyotosxkzkj eh yxkhsat sujtgx kzgxktkm uz yzvskzzg unc ktuetg"

for i in range(1, 27):
	msg = dec(reverse_str, i)
	print(msg)

# anyone who attempts to generate random numbers by deterministic means is, of course, living in a state of sin.
