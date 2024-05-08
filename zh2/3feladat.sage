def A(nums):
    return (sum(nums) + 1) % 65521

def B(nums):
    s = 0
    for i in range(1, len(nums) + 1):
        s += 1 + sum(nums[:i:])

    return s % 65521

def hash(nums):
    return B(nums) * 65336 + A(nums)

nums = [87,105,107,105,112,101,100,105,9]
print(hash(nums)) # 293620816