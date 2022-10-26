[[]] # 자료 내의 값을 가져옴
[] # 자료 값을 가져옴(원소를 가져옴, 데이터 유형을 인식 X)

product <- list("A002", "Mouse", 30000)
product

#----
# 괄호에 따른 class 차이
product[2]
product[[2]]

product[3]
product[[3]]

class(product[3]) # list!
class(product[[3]]) # numeric!

product[3] * 0.9 # list라서 불가능
product[[3]] * 0.9

product[c(1,2)]


#----
# 원소 제거 방법
product[c(FALSE, TRUE, TRUE)]
product[-1]

#----
# 원소 찾기, null
product <- list(id = "A002", 
                name = "Mouse",
                price = 30000)

product

product[["name"]]
product$name

product[c("name", "price")]

product[["aaa"]] # 없으면 null을 출력
product$aaa
product[[4]] # 이건 error를 출력함! 차라리 에러가 나오는 것이 더 좋은듯?

product[c(4,2,5)]
product[c("aaa", "name", "bbb")]

#----
# list in list
lst <- list(one=1, two=2, three=list(alpha=3.1, beta=3.3)) # 리스트 안의 리스트
lst

lst[['three']] # three 값을 출력
lst[['three']][['beta']] # three > beta 값을 출력

lst$three$beta
