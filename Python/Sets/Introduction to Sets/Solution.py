def average(array):
    s = set(array)
    res = sum(s)/len(s)
    
    return res

if __name__ == '__main__':
    n = int(input())
    arr = list(map(int, input().split()))
    result = average(arr)
    print(result)