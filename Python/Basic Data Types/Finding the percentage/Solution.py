if __name__ == '__main__':
    i = int(input())
    marks = {}
    for _ in range(i):
        name, *line = input().split()
        scores = list(map(float,line))
        marks[name] = (sum(scores))/len(scores)
    query_name = input()
    print('%.2f' % marks[query_name])