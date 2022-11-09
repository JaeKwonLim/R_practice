library(stringr)

string <- c("data analytics is useful",
            "business analytics is helpful",
            "visualization of data is interesting for data scientists")

#----
# detect
str_detect(string = string, pattern = "data") # grepl과 같음
str_detect(string, "DATA")
str_detect(string, fixed("DATA", ignore_case = TRUE))

str_detect(c("abz", "ayz", "a.z"), "a.z") # fixed 안하면 True를 반환
str_detect(c("abz", "ayz", "a.z"), fixed("a.z")) # fixed
str_detect(c("abz", "ayz", "a.z"), "a\\.z") # 메타문자를 사용하면 fixed와 같은 값이 나옴

#----
# locate
str_locate(string, "data")
str_locate_all(string, "data")

#----
# extract
str_extract(string, "data")
str_extract_all(string, "data")

str_extract_all(string, "data", simplify = TRUE)
unlist(str_extract_all(string, "data"))

#----
# match
sentences5 <- sentences[1:5]
sentences5

str_extract(sentences5, "(a|A|the|The) (\\w+)")
str_match(sentences5, "(a|A|the|The) (\\w+)") # 결과를 그룹별로 추출, 관사 찾기, 단어
str_match_all(sentences5, "(a|A|the|The) (\\w+)")

#----
# replace
str_replace(string = string, pattern = "data", replacement = "text") # 첫번째만 바뀜!!!!
str_replace_all(string = string, pattern = "data", replacement = "text")

#----
# split(unique 활용)
str_split(string, " ")
unlist(str_split(string, " "))
unique(unlist(str_split(string, " ")))

str_split(string, " ", n=3)
str_split(string, " ", n=3, simplify = TRUE)

str_length(string)

#----
# count
str_count(string, "data")
str_count(string, "\\w+") # 단어의 개수

#----
# pad
str_pad(string=c('a', "abc", "abcde"), 6, side = "left", pad=' ')

mon <- 1:12
str_pad(mon, width = 2, side = 'left', pad = '0')
str.pad <- str_pad(string,
        width = max(str_length(string)),
        side = 'both',
        pad = ' ')
str_trim(str.pad, side="both")

#----
# c, sub
str_c("data", "mining", sep=' ')
str.mining <- str_c(c('data mining', 'text mining'),
                    'is useful', sep = " ")
str.mining

str_c(str.mining, collapse = "; ")
cat(str_c(str.mining, collapse = "\n"))

str_sub(string = str.mining, start = 1, end = 4)
str_sub(str.mining, 5, 5) <- "-"
str.mining

str_sub("abcdefg", -2)
str_sub("abcdefg", end = -2)
