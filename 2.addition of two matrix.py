def addM(A,B):
    result=[ [0,0,0],[0,0,0],[0,0,0] ]
    #for rows
    for i in range(len(A)):
        #for columns
        for j in range(len(A[0])):
            result[i][j]=A[i][j] + B[i][j]

    for k in result:
        print(k)

    return 0
A=[ [13, 21, 11], [8, 2, 9], [6, 27, 8] ]

B=[ [17, 11, 9], [2, 12, 21], [10, 3, 12] ]

print("Result: ")
addM(A,B)
