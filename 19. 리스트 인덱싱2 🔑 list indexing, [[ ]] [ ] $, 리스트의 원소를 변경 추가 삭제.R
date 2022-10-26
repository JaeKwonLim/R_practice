product <- list(id = "A002", 
                name = "Mouse",
                price = 30000)

product

#----
# 변경
product[[3]] <- 40000
product[['price']] <- 40000
product$price <- 40000

product[3] <- 40000
product['price'] <- 40000
product

product[[3]] <- c(30000,40000) # 2개 이상은 괄호 2개
product[3] <- list(c(30000,40000)) # 괄호 1개로 하려면 list로 저장해야함

product[1:3] <- list("A002", "Keyboard", 90000)
product

#----
# 추가
product[[4]] <- c("Domestic", "Export")
product

product$madein <- c('Korea', "China")
product[['madein']] <- c('Korea', "China")
product['madein'] <- list(c('Korea', "China"))
product

product[6:9] <- list(0.12, 1, 3, 4)
product

#----
# 추가 2
names <- c("M", "Tue", "W", "Thu", "F", "Sat", "Sun")
values <- c(123,234,345,456,567,678,789)
traffic.death <- list()
traffic.death[names] <- values
traffic.death

#----
# 삭제
traffic.death[['F']] <- NULL
traffic.death
traffic.death[c("Sat", "Sun")] <- NULL
traffic.death


traffic.death[traffic.death < 750] <- NULL
traffic.death