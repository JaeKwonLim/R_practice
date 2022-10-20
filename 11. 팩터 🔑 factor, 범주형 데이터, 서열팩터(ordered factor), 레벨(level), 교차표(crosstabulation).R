review <- c("Good", "Good", "Indifferent","Bad", "Good", "Bad")
review
review.factor <- factor(review) # 중복된 값은 삭제
review.factor

str(review.factor) # 총 3개의 독립된 값이 있음
as.numeric(review.factor)

#----
eventday <- c("Mon", "Mon", "Tue", "Web", "Mon", "Web", "Thu", "Fri", 'Tue')
eventday.factor <- factor(eventday)
eventday.factor

eventday.factor <- factor(eventday,
                          level=c("Mon", "Tue", "Web", "Thu", "Fri", "Sat", "Sun")) 
                          # 가능한 모든 범주를 지정함, 순서지정

eventday.factor

levels(review.factor)
levels(review.factor) <- c("B", "G", "I")
review.factor

nlevels(review.factor)
length(levels(review.factor))

eval <- c("Medium", "Low", "High", "Medium", "High")
ealeval.factor <- factor(eval)
eval.factor

eval.ordered <- factor(eval, levels = c("Low", "Medium", "High"), ordered = TRUE) # 차례를 지정함
eval.ordered

table(eval.factor) # 각 요소들의 개수 count
table(eval.ordered) # 지정된 순서로 출력

#----
sex <- c(2,1,2,2,1,0)
sex.factor <- factor(sex, levels = c(1,2), labels = c('Male', "Female"))
sex.factor
table(sex.factor)
