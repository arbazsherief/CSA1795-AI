m = [[21,11,33],[1,14,7],[2,6,26]]
for row in m :
	print(row)
rez = [[m[j][i] for j in range(len(m))] for i in range(len(m[0]))]
print("\n")
for row in rez:
	print(row)
