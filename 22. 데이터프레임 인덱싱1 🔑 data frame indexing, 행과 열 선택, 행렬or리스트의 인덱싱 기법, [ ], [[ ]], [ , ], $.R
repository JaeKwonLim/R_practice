?state
state.abb
state.area
state.name
state.region

us.state <- data.frame(state.abb, state.name, state.region, state.area)

us.state
str(us.state)

us.state[[2]] # 벡터로 출력됨
str(us.state[[2]])

us.state[2] # dataframe으로 출력
us.state[,2] #2번째 열만 추출되지만 벡터로 출력됨!
us.state[,2, drop=FALSE] #2번째 열만 추출되지만 벡터로 출력됨! -> 해결!
us.state[c(2,4)]
us.state[, c(2,4)]

us.state[["state.name"]] # col을 부른다..
us.state$state.name # $이 간단하고 좋은듯
us.state[,'state.name']
us.state[c('state.name','state.area')] 

state.x77
str(state.x77)
head(state.x77)
states <- data.frame(state.x77)
str(states)
row.names(states)
states$Name <- row.names(states)
row.names(states) <- NULL
head(states)

#----
# 조건문과 합집합
rich.states <- states[states$Income > 5000, 
                     c("Name","Income")]
rich.states
large.states <- states[states$Area > 100000,
                       c('Name', 'Area')]
large.states
merge(rich.states, large.states)
merge(rich.states, large.states, all=TRUE) # all=True 합집합
