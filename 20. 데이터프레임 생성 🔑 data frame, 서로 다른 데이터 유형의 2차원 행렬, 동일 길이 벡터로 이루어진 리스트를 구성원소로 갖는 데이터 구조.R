V1 <- c("A001", "A002", "A003")
V2 <- c("M", "S", "L")
V3 <- c(10, 20, 30)
data.frame(V1,V2,V3)

data.frame(row.names = V1, V2, V3)

product <- data.frame(id=V1, size=V2, price = V3)
product

str(product)

mat <- matrix(c(1,3,5,7,9,
                 2,4,6,8,10,
                 2,5,5,7,11), ncol=3)
mat
as.data.frame(mat) # 알아서 v1,v2...로 지정됨
number <- as.data.frame(mat)
number
colnames(number) <- c('odd', 'even',' prime') # col 이름 변경
number

v1 <- c("A001", "A002", "A003")
v2 <- c("M", "S", "L")
v3 <- c(10, 20, 30)
lst <- list(v1.v2.v3)
lst

as.data.frame(lst)
colnames(product)
colnames(product) <- c('id', 'size', 'price')
product

nrow(product)
ncol(product)

length # 열의 개수 반환
