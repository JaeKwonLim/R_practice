#----
fox.says <- "It is only with the HEART that one can See Rightly"
fox.said <- "what is essential is invisible to the eye"
p1 <- "You come at four in the afternoon, then at three I shall begin to be happy"
p2 <- "One runs the risk of weeping a little, if one lets himself be tamed"
p3 <- "What makes the desert beautiful is that somewhere it hides a well"
fox.said <- "WHAT IS ESSENTIAL is invisible to the Eye"
txt <- "Data Analytics is useful. Data Analytics is also interesting."
words <- c("at", "bat", "cat", "chaenomeles", "chase", "chasse", 
           "cheap", "check", "cheese",  "chick", "hat")
words2 <- c("12 Dec", "OK", "http://", "<TITLE>Time?</TITLE>", "12345", "Hi there" )

#----
#nchar, length
x <- 'We have a dream'
x
nchar(x)
length(x)

y <- c('We', 'have', 'a', 'dream')
nchar(y)
length(y)
nchar(y[4])

#----
#대문자, 소문자
letters
sort(letters, decreasing=TRUE)
tolower(fox.says)
toupper(fox.says)

#----
# split
strsplit(fox.said, split=" ")
strsplit(fox.said, split="")

fox.said.words <- unlist(strsplit(fox.said, split=" "))
fox.said.words[3]
unlist(strsplit(fox.said, split = " "))[3]
strsplit(fox.said, split=" ")[[1]]
strsplit(fox.said, split=" ")[[1]][[3]]

littleprice <- c(p1,p2,p3)
littleprice
strsplit(littleprice, " ")
strsplit(littleprice, " ")[[3]]
strsplit(littleprice, " ")[[3]][5]

fox.said <- "WHAT IS ESSENTIAL is invisible to the Eye"
fox.said.words <- strsplit(fox.said, " ")[[1]]
unique(fox.said.words) # 한번만 나온 글자 출력
unique(tolower(fox.said.words))

paste("Everybody", "wants", 'to', 'fly')
paste(c("Everybody", "wants", 'to', 'fly')) # 불가능

fox.said.words
paste(fox.said.words)

#----
# paste, sep, collapse
# sep는 하위수준 결합, collapse는 상위수준 결합
paste("Everybody", "wants", 'to', 'fly', sep="-")
paste("Everybody", "wants", 'to', 'fly', sep="")
paste0("Everybody", "wants", 'to', 'fly')

paste(pi, sqrt(pi))

paste("25 degree celsius is", 25*1.8 + 32, "degree fahrenheit")

heroes <- c('bat', 'super', 'hulk')
color <- c('b', 'blue','g')
paste(heroes,color)

paste("type", 1:5)
paste(heroes, 'wants','to','fly')

paste(c("Everybody", "wants", 'to', 'fly'))
paste(c("Everybody", "wants", 'to', 'fly'),collapse = " ") # collapse를 하면 가능해짐

paste(heroes, 'wants','to','fly')
paste(heroes, 'wants','to','fly', collapse = ", and") #, and를 붙여줌
paste(heroes, 'wants','to','fly', sep="-")
paste(heroes, 'wants','to','fly', sep="-", collapse = ";")

paste(month.abb, 1:12)
paste(month.abb, 1:12, sep = '_')
paste(month.abb, 1:12, sep = '_', collapse = '-')

#----
# outer
outer(c(1,2,3), c(1,2,3)) # 가능한 모든 곱을 행열로 출력

asian.countires <- c('korea', 'japan', 'china')
info <- c('gdp','pop','area')
out <- outer(asian.countires, info, FUN=paste, sep="-")
as.vector(out)
x <- outer(asian.countires, asian.countires, FUN=paste, sep="-")
x[!lower.tri(x)]

#----
# sprintf(format)
customer <- 'jobs'
buysize <- 10
deliveryday <- 3
paste('Hello ', customer, ", your order of ",  buysize,
      " product(s) will be dilivered within ", deliveryday, " day(s).", sep = "")

sprintf("Hello %s your order of %s product(s) will be dilivered within %s day(s).",
        customer, buysize, deliveryday)

customer <- c('jobs', 'gates', 'bezos')
buysize <- c(10, 7, 12)
deliveryday <- c(3,2,8.2)
sprintf("Hello %s your order of %s product(s) will be dilivered within %s day(s).",
        customer, buysize, deliveryday)
sprintf("Hello %s your order of %s product(s) will be dilivered within %.1f day(s).",
        customer, buysize, deliveryday)

#----
# substr
substr("Data Analytics", start = 1, stop = 4)
substr("Data Analytics", start = 6, stop = 14)
substring("Data Analytics", 6)

class <- c("Data Analytics", "Data Mining", "Data Visualization")
substr(class, 1, 4)

countries <- c('korea, kr', 'Uni 미국 알죠?, US', 'China, cn')
substr(countries, nchar(countries)-1, nchar(countries)) # nchar를 통해 끝자리 수를 찾음

#----
# grep
head(islands)
landmasses <- names(islands)
landmasses

grep(pattern = "New", x=landmasses)
index <- grep(pattern="New", x=landmasses)
landmasses[index]

grep(pattern='New', x=landmasses, value=TRUE)
landmasses[grep(" ", landmasses)]
grep(" ", landmasses, value=TRUE)

#----
# sub, gsub
txt <- "Data Analytics is useful. Data Analytics is also interesting."
sub(pattern = "Data", replacement = "Business", x=txt) # 첫 문자열만 바꿈
gsub(pattern = "Data", replacement = "Business", x=txt) # 바꿔! 바꿔! 모든걸 다 바꿔!

x <- c('1.csv', '2.csv', '3.csv')
gsub(".csv","", x)

#----
# grep 2, 와일드 문자
words <- c("at", "bat", "cat", "chaenomeles", "chase", "chasse", 
           "cheap", "check", "cheese",  "chick", "hat")
grep("che", words, value=TRUE)
grep("at", words, value=TRUE)
grep("[ch]", words, value=TRUE) # c 또는 h가 포함된 문자열을 출력
grep("[at]", words, value=TRUE)

grep("ch|at", words, value=TRUE)
grep("ch(e|i)ck", words, value=TRUE)

grep("chas?e", words, value=TRUE) # s가 있어도 되고 없어도 되는 1 or 0
grep("chas*e", words, value=TRUE) # s가 없거나 반복되는 경우우
grep("chas+e", words, value=TRUE) # s가 1회 이상 반복
grep("ch(a*|e*)se", words, value=TRUE)

grep("^c", words, value=TRUE) # 시작이 c
grep("t$", words, value=TRUE) # 끝이 t
grep("^c.*t$", words, value=TRUE)

grep("^[hc]?at", words, value=TRUE)

words2 <- c("12 Dec", "OK", "http://", "<TITLE>Time?</TITLE>", "12345", "Hi there" )
grep("[[:alnum:]]", words2, value=TRUE) # 문자와 숫자의 조합
grep("[[:alpha:]]", words2, value=TRUE) # 문자만 출력
grep("[[:digit:]]", words2, value=TRUE)
grep("[[:punct:]]", words2, value=TRUE) # 문장 구조가 포함된 경우 
grep("[[:space:]]", words2, value=TRUE) # 공백이 포함된 경우

grep("\\w+", words2, value=TRUE) # 단어
grep("\\d+", words2, value=TRUE) # 숫자
grep("\\s+", words2, value=TRUE) # 공백