def split_and_join(line):
    splittedLine = line.split(" ")
    joinedLine = "-".join(splittedLine)
    return joinedLine

if __name__ == '__main__':
    line = input()
    result = split_and_join(line)
    print(result)