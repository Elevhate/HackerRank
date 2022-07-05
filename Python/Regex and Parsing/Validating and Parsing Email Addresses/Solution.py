import email.utils
import re

if __name__ == "__main__":
    n = int(input())
    for i in range(n):
        line = input()
        _, mail = email.utils.parseaddr(line)
        if bool(re.match(r'[A-Za-z](\w|\.|-|_)+@[A-Za-z]+\.[A-Za-z]{1,3}$', mail)):
            print(line)