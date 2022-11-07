library(tibble)
v1 <- c("A001", "A002", "A003")
v2 <- c("aaa", 'bbb', 'ccc')
v3 <- c(3000, 2000, 1000)
product <- tibble(id = v1, name = v2, proce = v3)
str(product)
product

tribble(
  ~id, ~name, ~price,
  'A001', 'aaa', 3000,
  'A002', 'bbb', 2000,
  'A003', 'ccc', 1000
)

tb <- tibble(id=c(1,2,3),
             data=list(tibble(x=1, y=2),
                       tibble(x=4:5, y=6:7),
                       tibble(x=10)))
tb
tb$data
tb$data[[2]]
