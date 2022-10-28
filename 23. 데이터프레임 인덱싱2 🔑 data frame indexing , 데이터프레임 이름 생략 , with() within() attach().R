head(iris)

r <- iris$Sepal.Length / iris$Sepal.Width
r
r <- with(iris, Sepal.Length/ Sepal.Width)
r
r <- with(iris, Petal.Length/ Petal.Width)

#----
# with
with(iris, {
  print(summary(Sepal.Length))
  plot(Sepal.Length, Sepal.Width)
  plot(Petal.Length, Petal.Width)
})

#----
# <<- and <- 
with(iris,{
  stats.nokeep <- summary(Sepal.Length) # <- 하나 쓰면 with 밖에서는 호출 불가능!
  stats.keep <<- summary(Sepal.Length) # <<- 두개로~
})
stats.nokeep
stats.keep 

iris$Sepal.Ratio <- iris$Sepal.Length / iris$Sepal.Width
head(iris)

iris <- within(iris, Sepal.Ratio <- Sepal.Length / Sepal.Width)
head(iris)

#----
#메모리에 적재하기
attach(iris)

r <- Sepal.Length / Sepal.Width # iris라고 명시 안해도 괜찮음
detach(iris)

attach(iris)
iris$Sepal.Length <- 0
head(iris$Sepal.Length) # 이 값과
head(Sepal.Length) # 이 값이 다름 -> 원본은 수정하지 않음!
detach(iris)

attach(iris)
Sepal.Width <- Sepal.Width * 10
head(iris$Sepal.Width)
head(Sepal.Width)
ls() # sepal.width라는 새로운 작업 변수를 만들어서 10을 곱한 것
detach(iris)
rm(Sepal.Width) # 변수 지우기

Sepal.Length <- c(4.5, 5.3, 6.7)
Sepal.Length
attach(iris) # 같은 변수로 인해 경고가 뜸

plot(Sepal.Length, Sepal.Width) # 에러가 뜬다!
