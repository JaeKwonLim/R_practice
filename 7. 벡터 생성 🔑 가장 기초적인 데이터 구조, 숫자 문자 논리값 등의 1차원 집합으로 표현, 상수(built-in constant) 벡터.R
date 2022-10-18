c(1:10)
c("we","e","g","d")
c(TRUE,FALSE,TRUE,FALSE)

odd <- c(1,3,5)
even <- c(2,4,6)
odd
even
c(odd,even)

?seq()
seq(from=3,to=9)
seq(from=3,to=9,by=2)
seq(from=3.5,to=1.5,by=-0.5)

seq(from=0, to=100, length.out=5)
seq(from=-1, to=1, length.out=5)

?rep()
rep(1, times=3)
rep(c(1,2,3), times=3) #3번 반복
rep(c(1,2,3), each=3) #3번씩 반복
rep(c(1,2,3), times=c(1,2,3)) #tumes의 원소값만큼 반복됨
rep(c(1,2,3), length.out=8) #길이가 8이 될 때까지 반복

num <- c(1,2,3)
cha <- c("x","y","z")
c(num,cha) #숫자로 문자로 바꿔서 출력됨

str(num)
str(cha)

length(num)

LETTERS
letters

month.name
month.abb

pi

month <- c(12,9,3,5,11)
month
month.name[month]







