c(1,2,3,4)
c('a', 'b', 'c', 'a', 'b')
factor(c('a', 'b', 'c', 'a', 'b'))

matrix(1:12, 3, 4)
array(1:12, c(2,3,2)) #2 X 3의 배열을 가지는 행렬을 만듦

data.frame(product=c('a', 'b', 'c'),
           price=c(100,200,300))

list(x=c('a', 'b', 'c', 'a', 'b'),
     y=matrix(1:12, 3, 4),
     z=data.frame(product=c('a', 'b', 'c'),
                 price=c(100,200,300)))
