import random
import math

def my_factor(N):
	arr = []
	start = math.ceil(math.sqrt(N))
	
	for a in range(start, N):
		b = math.sqrt(a ** 2 - N)
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
