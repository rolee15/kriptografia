MIN_ORD = 32
MAX_ORD = 126
LENGTH = MAX_ORD - MIN_ORD + 1
def gen():
    return 1
def encrypt(msg, key):
    result = ""    
    for c in msg:        
        print("char: " + c + " ord: " + str(ord(c)))        
        ordinal = ord(c) + key        
        if (ordinal > MAX_ORD):            
            ordinal = ordinal % LENGTH + MIN_ORD        
        print("new ord: " + str(ordinal))        
        result += chr(ordinal)
    
    return result

def decrypt(msg, key):    
    result = ""    
    for c in msg:        
        print("char: " + c + " ord: " + str(ord(c)))        
        ordinal = ord(c) - key        
        if (ordinal < MIN_ORD):            
            ordinal = ordinal % LENGTH + MIN_ORD        
        print("new ord: " + str(ordinal))       
        result += chr(ordinal)        

        return result

message = "Ave Caesar!"
key = gen()
encrypted_msg = encrypt(message, key)
print("Encrypted message: " + encrypted_msg)
decrypted_msg = decrypt(encrypted_msg, key)
print("Decrypted message: " + decrypted_msg)
