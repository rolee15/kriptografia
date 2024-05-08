def factor_sums(n):
    if (n.is_prime()):
        return [n]

    arr = []
    for i in range(4, n ** 2):
        F = factor(i)
        s = 0
        for (p, a) in F:
            s += p *a
        if (s == n):
            arr.append(i)

    return arr

arr = factor_sums(8)
print(arr) # [15, 16, 18]