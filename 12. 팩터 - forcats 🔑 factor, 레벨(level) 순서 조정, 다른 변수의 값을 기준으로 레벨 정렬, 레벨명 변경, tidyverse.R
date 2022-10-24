# R에서는 범주형 데이터를 factor라고 함.
# package를 이용하면 더 쉽게 이용 가능!

a <- c("Vegetables", "Fruits", "Vegetables", "Grains", "Fruits", "Vegetables", "Dairy", "Fruits", "Proteins", "Fruits")
food <- factor(a)
food

install.packages("forcats")
library(forcats)
fct_inorder(food)
fct_infreq(food)
fct_relevel(food, "Fruits", "Vegetables", "Grains", "Proteins", "Dairy") # 순서 지정
fct_relevel(food, "Proteins") # 지정한 값만 맨 앞으로
fct_relevel(food, "Proteins", "Dairy")
fct_relevel(food, "Proteins", after=2) # after를 통해 다음 값으로 순서 지정
fct_relevel(food, "Proteins", after=Inf) # Inf로 마지막에 위치하게

value <- c(10, 15, 12, 7, 20,
           20, 13.5, 17,30, 150)
food
fct_reorder(food, .x=value) # 음식 가격 순으로 배열(중위수)
fct_reorder(food, .x=value, .fun = mean) # 음식 가격 순으로 배열(평균)
fct_reorder(food, .x=value, .desc = TRUE) # 음식 가격이 비싼 순으로 배열

fct_recode(food, Fats="Dairy", Fats="Proteins") # 레벨 명을 바꾸기