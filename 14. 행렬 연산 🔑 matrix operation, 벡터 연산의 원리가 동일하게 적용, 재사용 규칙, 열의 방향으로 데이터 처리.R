mtx <- matrix(1:6, 2, 3)
mtx

#----
# 단순 연산
mtx + 1
mtx - 1
mtx * 2
mtx / 2

a <- matrix(1:6, 2, 3)
b <- matrix(6:1, 2, 3)
a
b
a + b
a - b
a * b
a / b 

#----
# 행열 간의 연산
c <- matrix(6:1, 3, 2)
c
a
a + c # 배열이 달라서 불가능

a <- matrix(1:6, 2, 3)
b <- matrix(6:1, 3, 2)
a %*% b # 행열의 곱
c <- matrix(1:6, 2, 3)
a %*% c # 행열의 배열이 달라서 불가능!

#----
#벡터와 행열
mtx <- matrix(1:6, 2, 3)
mtx %*% 1:3
mtx %*% 1:2 # 차원이 달라서 불가능
1:2 %*% mtx
mtx <- matrix(1:6, 2, 3)
mtx + 1:3 # 열의 방향에 따라서 값이 더해짐, 재사용 규칙으로 1~3 반복

#----
# 함수
rowSums(mtx)
colSums(mtx)
rowMeans(mtx)
colMeans(mtx)
t(mtx) # 전치행열열

1:5
t(1:5)

mtx
mtx[2,] # 하나의 열을 추출
t(mtx[2,]) # trans를 해줘도 열이 아니라 행임!!!!!