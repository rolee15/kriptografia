def lcg(a, b, m, seed, n):
    acc=seed

    for i in range(1,n):
        acc = lcg_step(a, b, m, acc)

    return acc

def lcg_step(a, b, m, seed):
    x = seed
    return (a*x + b) % m


rng = lcg(3, 5, 31, 0, 10)
print(rng)
