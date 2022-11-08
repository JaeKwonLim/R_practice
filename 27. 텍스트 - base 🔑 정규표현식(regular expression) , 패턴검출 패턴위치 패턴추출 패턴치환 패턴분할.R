string <- c("Data Analytics", "data Mining", "Data Visualization")

grep(pattern = "Data", x=string)
grep(pattern = "Data", x=string, value = TRUE)

string[grep(pattern = "Data", x=string)]
grep("Analytics|Mining", string, value = TRUE)
grep("Analytics|Mining", string, value = TRUE, invert = TRUE)

grepl(pattern = 'data', x=string) # 논리값 반환

state.name
grepl('new', state.name, ignore.case = TRUE)
state.name[grep('new', state.name, ignore.case = TRUE)]
sum(grepl('new', state.name, ignore.case = TRUE))

regexpr(pattern = 'Data', text=string) # 1번열에는 시작점, 2번째는 글자수
gregexpr(pattern = 'Data', text=string)

regmatches(x = string, m = regexpr("Data", string))
regmatches(x = string, m = gregexpr("Data", string))
regmatches(x = string, m = gregexpr("Data", string), invert = TRUE)

sub(pattern="Data", replacement = "text", x = string)
gsub(pattern="Data", replacement = "text", x = string)

strsplit(x=string, split = " ")
unlist(strsplit(x=string, split = " "))
unique(unlist(strsplit(x=string, split = " ")))
