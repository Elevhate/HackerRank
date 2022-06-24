def minion_game(string):
    vowels = ['A','E','I','O','U']
    score_k = 0
    score_s = 0
    
    for i in range(len(string)):
        if string[i] in vowels:
            score_k += len(string) - i
        else:
            score_s += len(string) - i
    
    if score_k > score_s:
        print("Kevin " + format(score_k))
    elif score_k < score_s:
        print("Stuart " + format(score_s))
    else:
        print("Draw")

if __name__ == '__main__':
    s = input()
    minion_game(s)