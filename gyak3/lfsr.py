def lfsr(s, c, n):
    if (len(s) != len(c)):
        print("Sequences s and c must be the same length!")
        exit(1)
    
    acc = s
    for i in range(1, n):
        s = lfsr_step(acc, c)

    return s

def lfsr_step(s, c):
    for i in range(len(s)):
        print(s[i])


s = [1, 0, 1, 0, 1]
c = [1, 1, 1, 1, 1]
steps = 5

z = lfsr(s, c, steps)

