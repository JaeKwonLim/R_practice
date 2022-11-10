Sys.Date()
date()
Sys.time()

class(Sys.Date()) # text가 아님

#----
# format
as.Date("2024-12-31")
as.Date("2024/12/31")
as.Date("12/31/2024", format("%m/%d/%y"))
?strptime

d <- as.Date("2024-12-31")

format(d, format="%m/%d/%y")
today <- Sys.Date()
format(today, format="%Y/%m/%d")
format(today, format="%Y/%m/%d %A")
format(today, format="%Y/%m/%d %a")

d <- as.Date("2025-12-31")
weekdays(d)

d+7
d+1:7

weekdays(d+1:7)

#----
# posix
pct <- as.POSIXct("2025/03/15, 15:03:35",
           format="%Y/%m/%d, %H:%M:%S")
as.integer(pct)

plt <- as.POSIXlt("2025/03/15, 15:03:35",
                  format="%Y/%m/%d, %H:%M:%S")
class(plt)
unclass(plt)

plt$mday
plt$mon
plt$year

dposix <-as.Date("2025/03/15")
as.POSIXlt(dposix)$wday
as.POSIXlt(dposix)$yday
as.POSIXlt(dposix)$year+1900
as.POSIXlt(dposix)$mon + 1

strptime("2025/03/15", format = "%Y/%m/%d")
class(strptime("2025/03/15", format = "%Y/%m/%d"))
strptime("2025/03/15", format = "%Y/%m/%d")$year + 1900

moon <- as.POSIXct("1969/07/20, 20:17:39",
                   format="%Y/%m/%d, %H:%M:%S",
                   tz="UTC")
moon
format(moon, "The Moon %Y/%m/%d at %H:%M:%S.")

#----
# ISOdate
y <- 2020
m <- 12
d <- 31
ISOdate(y,m,d)
as.Date(ISOdate(y,m,d))
years <- c(2021, 2022, 2023,2025)
months <- c(1,4,6,8)
days <- c(12, 19, 25, 23)
ISOdate(years, months, days)

#----
# julian
jdate <- as.Date("2025-12-31")
as.integer(jdate)
julian(jdate)

as.integer(as.Date("1970-01-01"))
as.integer(as.Date("1969-12-31"))
as.integer(as.Date("1970-01-02"))
as.integer(as.Date("1970-01-03"))

as.Date(as.integer(jdate), origin="1970-01-01")

moon + 60*60*2 # 2시간 증가
moon + 60*60*24*7 # 7일 후
moon - 60*60*24*7 # 7일 전

#----
# difftime
today <- Sys.Date()
dooly <- as.Date("1983-04-22")
difftime(today, dooly, units = "days")
difftime(today, dooly, units = "weeks")
difftime(today, dooly, units = "days")

moon
Sys.time() > moon
Sys.Date() > as.Date(moon)
