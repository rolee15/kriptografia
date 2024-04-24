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

print("ciphertext: ")
ciphertext = input() 
print("key length: ")
key_length = int(input())
cracked_key = crack(ciphertext, key_length)
print("cracked key: " + cracked_key)
