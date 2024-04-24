import random
import string

def gen(l=0):
    if l == 0:
        l = random.randint(1, 255)

    k = ''.join(random.choices(string.ascii_lowercase, k = l))

    return k

def enc(m, k):
    if len(k) < len(m):
        k = (k * (len(m) // len(k))) + k[:len(m) % len(k)]

    cipher = ''
    for i in range(len(m)):
        if m[i].isalpha():
            shift = ord(k[i]) - ord('a')
            cipher += chr(((ord(m[i]) - ord('a') + shift) % 26) + ord('a'))
        else:
            cipher += m[i]
    return cipher

def dec(c, k):
    if len(k) < len(m):
        k = (k * (len(m) // len(k))) + k[:len(m) % len(k)]

    message = ''
    for i in range(len(c)):
        if c[i].isalpha():
            shift = ord(k[i]) - ord('a')
            message += chr(((ord(c[i]) - ord('a') - shift) % 26) + ord('a'))
        else:
            message += c[i]
    return message

def crack(c, l):
    if l > len(c):
        l = len(c)

    key = ''
    for i in range(l):
        message = ''
        for j in range(i, len(c), l):
            message += c[j]
        common_letter = max(set(message), key=message.count)
        shift = (ord(common_letter) - ord('e')) % 26
        chr((ord('a') + shift) % 26 + ord('a'))
        key += chr((ord('a') + shift) % 26 + ord('a'))
    return key

print("message to encrypt:")
m = input()
print("key length:")
l = int(input())
k = gen(l)
c = enc(m, k)
print("key: " + k)
print("encrypted message: " + c)
print("decrypted message: " + dec(c, k))

cracked_key = crack(c, len(k))
print("cracked key: " + cracked_key)
print("decrypted message with cracked key: " + dec(c, cracked_key))