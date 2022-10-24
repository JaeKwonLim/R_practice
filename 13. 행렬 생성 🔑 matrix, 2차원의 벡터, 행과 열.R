v <- 1:12
v
dim(v) <- c(3:4) # 3X4로 만들기
v

#-----
# 행열을 만들어봐요
v <- 1:12
matrix(data=v, nrow = 3, ncol = 4) # 열의 방향으로 숫자가 채워짐
matrix(data=v, nrow = 3, ncol = 4, byrow = TRUE) # 행의 방향으로 숫자가 채워짐

rnames <- c("R1", "R2", "R3")
colnames <- c("c1", "c2", "c3", "c4")
matrix(data = v, nrow = 3, ncol = 4,
       dimnames = list(rnames, colnames))

matrix(v, 3, 4) # 정해진 순서로만 쓰면 nrow, ncol을 안해도 됨
matrix(0, 3, 4)
matrix(NA, 3, 4)
matrix(v, ncol = 4) # 알아서 해줘요~

#----
# 2차원 구조
mat <- matrix(v, ncol = 4)
mat
str(mat)

#----
# 행열의 shape
dim(mat) 
dim(mat)[1]
dim(mat)[2]
nrow(mat)
ncol(mat)
length(mat)

#----
# 결합
rbind() # row 방향 결합
cbind() # col 방향 결합
v1 <- c(1,2,3,4,5)
v2 <- c(6,7,8,9,10)
rbind(v1,v2)
cbind(v1,v2)

#----
cbind(1:3, 4:6, matrix(7:12, 3,2)) # 1~3 벡터, 4~6 벡터 그리고 행열을 결합
rbind(matrix(1:6, 2,3), matrix(7:12, 2,3))