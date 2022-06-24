if __name__ == '__main__':
    N = int(input())
    List=[]
    for i in range(N):
        komut=input().split()
        if komut[0]=="insert":
            List.insert(int(komut[1]), int(komut[2]))
        elif komut[0]=="remove":
            List.remove(int(komut[1]))
        elif komut[0]=="append":
            List.append(int(komut[1]))
        elif komut[0]=="sort":
            List.sort()
        elif komut[0]=="pop":
            List.pop()
        elif komut[0]=="reverse":
            List.reverse()
        else:
            print(List)