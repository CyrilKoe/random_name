import numpy as np

N = 8

A = np.zeros((N, N), dtype=int)
B = np.zeros((N, N), dtype=int)

def fill_matrix():
    for i in range(N):
        for j in range(N):
            A[i][j] = int(i * N + j)

def print_matrix(mat):
    for i in range(N):
        for j in range(N):
            print(mat[i][j], end=" ")
        print("")

fill_matrix()
B = A.T
C = A @ B

print_matrix(C)