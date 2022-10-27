id <- c("A001", "A002", "A003")
name <- c("M", "S", "L")
price <- c(10, 20, 30)
product <- data.frame(id, name, price)

#----
# rbind
product <- rbind(product,c("A004", 'Xl', 53)) # 행 추가

product

new.rows <- data.frame(id=c('c002', 'a003'),
                       name=c('XS', 'XXl'),
                       price=c(32,17))

new.rows
product <- rbind(product, new.rows)
product

#----
# cbind
product <- cbind(product,
                 madein=c('korea', 'japan', 'china', 'korea','usa','mexico'))
product

product$madein <- c('korea', 'japan', 'china', 'korea','usa','mexico')
product

new.cols <- data.frame(manufacturer=c('samsung', 'apple', 'logitech', 'samsung', 'samsung','mola'),
                       quantity=c(30, 8, 19,38,49,48))

product <- cbind(product, new.cols)

#----
# col이름이 같아도... 노상관!!!!!
cols1 <- data.frame(x=c('a','b','c'),
                    y=c(1,2,3))
cols2 <- data.frame(x=c('alpha', 'beta', 'gamma'),
                    y=c(1,2,3))

cbind(cols1,cols2)

#----
#No가다
df1 <- data.frame(sex='female', month=1, weight=3.5)
df2 <- data.frame(sex='male', month=3, weight=4.5)
df3 <- data.frame(sex='female', month=5, weight=5.5)
df4 <- data.frame(sex='female', month=9, weight=9.5)
df5 <- data.frame(sex='male', month=6, weight=7.5)
lst <- list(df1,df2,df3,df4,df5)
lst
str(lst)

lst[[1]]
lst[[2]]
rbind(lst[[1]],lst[[2]]) # rbind로 합칠수있음!.... 근데 이걸 다 한다고??

do.call(rbind, lst)

lst1 <- list(sex='female', month=1, weight=3.5)
lst2 <- list(sex='male', month=3, weight=4.5)
lst3 <- list(sex='female', month=5, weight=5.5)
lst4 <- list(sex='female', month=9, weight=9.5)
lst5 <- list(sex='male', month=6, weight=7.5)
lst <- list(lst1,lst2,lst3,lst4,lst5)
lst

lst[[1]] # list형태로 추출
as.data.frame(lst[[1]]) # 추출한 데이터를 dataframe으로 변환
lapply(lst, as.data.frame) #변수가 함수에 넘겨지게 되는 lapply
do.call(rbind, lapply(lst,as.data.frame))
