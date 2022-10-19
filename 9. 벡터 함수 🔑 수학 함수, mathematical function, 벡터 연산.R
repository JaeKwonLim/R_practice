abs(-3:3)
log(1:5)
log(1:5, base=exp(1))

log2(1:5) # 밑수가 2인 로그
log10(1:5) # 밑수가 10인 로그

exp(1:5) # 자연상수를 밑수로한 로그
y <- exp(1:5)
y
log(y)

factorial(1:5) # 각 원소의 팩토리얼 계산
choose(5, 2) # 5c2

sqrt(1:5)

#----------------------------
options("digits") # 유효자리수가 7자리
pi

signif(456.789, digits=2) # 유효자리수 수정하기
signif(456.789, digits=3)
signif(456.789, digits=4)

round(456.789, digits = 2) # 반올림
round(456.789)
round(sqrt(1:5), digits = 2)
round(456.789, digits = -2)
round(456.789, digits = -1)

round(11.5)
round(12.5) # 가장 가까운 짝수로 반올림
round(13.5)
round(-3.5)
round(-4.5)
round(-5.5)

floor(456.789) # 무조건 내림!
floor(-456.789) 
ceiling(456.789) # 무조건 올림!
ceiling(-456.789) 
trunc(456.789) # 0에 가까운 정수 반환
trunc(-456.789)

#----------------------
3/0
5 - Inf
Inf * Inf
Inf * (-Inf)

is.infinite(10^(305:310))

Inf/Inf
Inf * 0
log(-2)
NaN + 3
is.nan(NaN + 3)

NA
k <- NA
k + 5
k == NA
is.na(k)
is.na(k + 5)
is.na(NaN)

#---------------------
z <- 1:5
z
sum(z)
prod(z) # 다 곱해!
max(z)
min(z)

mean(z)
median(z)
range(z)
var(z)
sd(z)

w <- c(1,2,3,4,5,NA)
w
sum(w)
sum(w,na.rm=TRUE)
sum(na.omit(w))

v <- c(NA, NA, NA, NA, NA)
v
sum(v, na.rm=TRUE)
prod(v, na.rm = TRUE)
max(v, na.rm = TRUE)
min(v, na.rm = TRUE)

#-------------------
traffic.death <- c(842,787,389,972,172,493,478)

cumsum(traffic.death)
cumsum(c(3,5,1,NA,2)) # 결측값이 있으면 na를 반환
cumprod(traffic.death)
cummax(traffic.death)
cummin(traffic.death)

#-------------------
traffic.death
diff(traffic.death)
diff(c(3,5,1,NA,2))
diff(1:5, lag=2)

p <- 1:10
q <- 5:15

union(p, q) # 합집합
intersect(p, q) # 교집합
setdiff(p, q) # 차집합
setdiff(q, p)
is.element(setdiff(p,q), p) # 원소가 안에 들어있는가?
is.element(setdiff(p,q), q)