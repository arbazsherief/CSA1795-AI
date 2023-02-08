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
A=[ [3 ,2 ,10], [11 ,12 ,13 ], [16, 17, 18] ]

B=[ [5, 3, 8], [1, 2, 7], [5, 3, 8] ]

print("Result: ")
addM(A,B)
