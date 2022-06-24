import string

def print_rangoli(size):
    st = string.ascii_lowercase
    l = []

    for i in range(size):
        s = '-'.join(st[i:size])
        l.append((s[::-1]+s[1:]).center(4*size-3, '-'))

    print('\n'.join(l[:0:-1]+l))

if __name__ == '__main__':
    n = int(input())
    print_rangoli(n)