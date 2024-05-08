def is_fibonacci_generator(n, p):
    if (n >= p):
        return false

    prev1 = 1
    prev2 = n
    for i in range(2, p):
        curr = n ** i % p
        s = (prev1 + prev2) % p
        if (s != curr):
            return false

        prev1 = prev2
        prev2 = curr

    return true

primes = Primes()
sum = 0
for p in primes:
    if (p >= 10000):
        break

    for n in range(2, p):
        if (is_fibonacci_generator(n, p)):
            sum += 1
            break

print(sum) # 610
