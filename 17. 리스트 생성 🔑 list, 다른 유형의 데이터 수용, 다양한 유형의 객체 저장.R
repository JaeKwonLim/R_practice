list(0.478, 0.31678, 0.3874)

list(1.23, "a", c(2,3,4,6),
     matrix(1:6, ncol=3), mean)

lst <- list()
lst
lst[[1]] <- 1.23
lst[[2]] <- 'a'
lst[[3]] <- c(2,3,4,6)
lst[[4]] <- matrix(1:6, ncol=3)
lst[[5]] <- mean
lst

lst <- list(0.478, 0.31678, 0.3874)
lst
names(lst) <- c('sigma1', 'sigma2', 'sigma3')
lst
names(lst)

length(lst)

Worldcup1 <- list('Brazil', 'South Africa', ' Germany')
Worldcup2 <- list('Korea-Japan', 'France', 'USA')
Worldcup1
Worldcup2

c(Worldcup1, Worldcup2)

a <- list(1,2,3,4,5,6,7)
a
mean(a)

mean(unlist(a))
