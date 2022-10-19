1+2
'+'(1,2)

c(1,2,3) + c(4,5,6)
c(1,2,3) * c(4,5,6)

c(10,20,30) / c(2,4,6)
c(10,20,30) %% c(3,5,7)
c(10,20,30) %/% c(3,5,7)

c(1,2,3) + c(4,5,6,7,8,9) #123을 재사용해서 연산함

c(1,3,5) + 10 #vector와 스칼라 값을 연산해도 괜찮음

c(1,2,3) + c(4,5,6,7,8)

v <- pi
w <- 10/3

v == w
v != w
v > w
v < w
!(v>w)
(v == w) | (v < w)
(v == w) & (v < w)
isTRUE(v==w)

y <- c(0,25,50,75,100)
z <- c(50,50,50,50,50)
y == z
y != z
y > z

y == 50
y > 50

as.numeric(TRUE) #TRUE는 1로 인식
as.numeric(FALSE)
TRUE * TRUE
TRUE * FALSE

y <- c(0,25,50,75,100)
sum(y > 50) # 50보다 큰 개수

any(-3:3 > 0)
all(-3:3 > 0)

sqrt(2)^2 == 2
sqrt(2)^2 - 2 
identical(sqrt(2)^2, 2) # r에서는 반올림으로 인해 다르게 인식되기도 함

all.equal(sqrt(2)^2, 2) # 매우 작은 오차를 무시함
all.equal(sqrt(2)^2, 3) # 찍찍찍찍 말이 많어....
isTRUE(all.equal(sqrt(2)^2, 3)) # isTRUE로 하면 T/F만 가능

fruit <- c("Apple", "Banana", "Strawberry")
food <- c("Pie", "juice", "Cake")
paste(fruit, food) # 문자열은 +가 안되고 paste로 붙여줘야함
paste(fruit, "juice")
