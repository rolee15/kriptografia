

# This file was *autogenerated* from the file 3.sage
from sage.all_cmdline import *   # import sage library

_sage_const_1 = Integer(1); _sage_const_561 = Integer(561); _sage_const_1105 = Integer(1105); _sage_const_1729 = Integer(1729); _sage_const_2465 = Integer(2465); _sage_const_2821 = Integer(2821); _sage_const_6601 = Integer(6601); _sage_const_28 = Integer(28); _sage_const_201 = Integer(201); _sage_const_1111 = Integer(1111); _sage_const_6541 = Integer(6541); _sage_const_9999 = Integer(9999)
def is_carmichael(n):
	primes = n.coprime_integers(n)
	for b in primes:
		rem = (b ** (n - _sage_const_1 )) % n
		if (rem != _sage_const_1 ):
			return false
	return true

carmichaels = [_sage_const_561 , _sage_const_1105 , _sage_const_1729 , _sage_const_2465 , _sage_const_2821 , _sage_const_6601 ]
non_carmichaels = [_sage_const_28 , _sage_const_201 , _sage_const_1111 , _sage_const_6541 , _sage_const_9999 ]

print("Carmichael numbers:")
for n in carmichaels:
	print(str(n) + ": " + str(is_carmichael(n)))

print("Not carmichaels:")
for n in non_carmichaels:
	print(str(n) + ": " + str(is_carmichael(n)))

