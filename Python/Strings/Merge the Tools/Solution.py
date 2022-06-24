def merge_the_tools(string, k):
    for i in range(0, len(string), k):
        strn = string[i:i+k];
        sub = ''
        for s in strn:
            if s not in sub:
                sub += s;
        print(sub);

if __name__ == '__main__':
    string, k = input(), int(input())
    merge_the_tools(string, k)