num <- 0:30
num
prime <- c(2,3,5,7,11,13,17,19)
prime
prime[1]
prime[2]
prime[3]
prime[1:3]
prime[4:6]

prime[c(1,1,5,5)]
prime[c(1,3,5,7)]
prime[c(7,5,3,1)]

indices <- c(1,3,5,7)
prime[indices]

prime[-1] # -는 제거하고 추출
prime[-1:-3]
prime[-(1:3)]

length(prime) # 인수의 길이 구하기
prime[1:(length(prime)-1)] # 마지막 값만 제거
prime[-length(prime)] # 마지막 값만 제거

prime <- c(2,4,5,7,11,14,17,18)
prime
prime[2] <- 3 # 인수바꾸기
prime
prime[c(6,8)] <- c(11,19)
prime

length(prime)
prime[9] <- 23 # 새로운 위치를 설정하고 넣기
prime
prime[c(10,11)] <- c(29,31)
prime
prime[15] <- 47
prime

prime <- c(2,3,5,7,11,13,17,19)
prime < 10
prime[prime < 10]
prime %% 2 == 0
prime[prime %% 2 == 0]

seq_along(prime)
seq_along(prime) %% 2 == 0
prime[seq_along(prime) %% 2 == 0] # 매 2번째 인수만 추출

prime[c(FALSE, TRUE)] # 리사이클링 룰을 이용해서 2번째만 추출
prime[c(FALSE, TRUE, FALSE)] 

rainfall <- c(21.6, 22.8, 45.8, 77.0, 102.9, 133.2, 321.9, 388.5, 193.0, 39.6, 12.9, 38.9)
rainfall > 100
which(rainfall > 100) # 인수 번호 추출
month.name[which(rainfall > 100)] # month.name를 통해 월 이름 추출
which.max(rainfall)
month.name[which.max(rainfall)]
which.min(rainfall)
month.name[which.min(rainfall)]

rainfall > 100
rainfall[rainfall > 100] # 인수값을 직접 추출
rainfall[which.min(rainfall)]

traffic.death <- c(842,787,389,972,172,493,478)
names(traffic.death) <- c('Mon', 'Tue', "Wed", 'Thu', 'Fri', 'Sat', 'Sun')
traffic.death
traffic.death['Sat']
traffic.death[c("Tue", "Thu", "Sun")]
weekend <- c("Fri", "Sat", "Sun")
traffic.death[weekend]

traffic.death > 800
traffic.death[traffic.death > 800]
