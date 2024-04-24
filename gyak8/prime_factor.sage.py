

# This file was *autogenerated* from the file prime_factor.sage
from sage.all_cmdline import *   # import sage library

_sage_const_2 = Integer(2)
import random
import math

def my_factor(N):
	arr = []
	start = math.ceil(math.sqrt(N))
	
	for a in range(start, N):
		b = math.sqrt(a ** _sage_const_2  - N)
		print("a: " + str(a) + " b:" + str(b))
		if (math.ceil(b) == b):
			fac1 = int(a - b)
			fac2 = int(a + b)
			print("factors found: " + str(fac1) + " " + str(fac2)) 
	return arr


print("Give a number to factorize:")
n = int(input())
print("sage factors: ")
print(factor(n))
factors = my_factor(n)
print(factors)

