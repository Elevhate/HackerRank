if __name__ == '__main__':
    students = []
    i = int(input())
    for _ in range(i):
        name = input()
        score = float(input())
        students.append([name, score])

    students = sorted(students, key = lambda x: x[1])
    #2nd lowest score
    sls = sorted(list(set([x[1] for x in students])))[1]
    desired_students = []
    for s in students:
        if s[1] == sls:
            desired_students.append(s[0])
            
    print("\n".join(sorted(desired_students)))