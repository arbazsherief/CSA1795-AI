
cnt=0

def place(pos, cnt, a):
	for i in range(1, pos):
		if ((a[i] == a[pos]) or ((abs(a[i] - a[pos]) == abs(i - pos)))):
			return False
	return True

def print_sol(N, cnt, a):
	cnt += 1
	print("\n\nSolution " , cnt , ":\n")
	for i in range(1,N+1):
		for j in range(1,N+1):
			if (a[i] == j):
				print("Q\t",end = "")
			else:
				print("*\t",end="")
		print("")
		
	return cnt
def queen(n,cnt,a):
	k = 1
	a[k] = 0
	while (k != 0):
		a[k] = a[k] + 1
		while ((a[k] <= n) and place(k,cnt,a)!=True):
			a[k] += 1
		if (a[k] <= n):
			if (k == n):
				cnt = print_sol(n,cnt,a)
			else:
				k += 1
				a[k] = 0
		else:
			k -= 1
			
	return cnt

N = 4
a = [0] * 30
cnt = 0

cnt = queen(N,cnt,a)
print("\nTotal solutions= " , cnt)
