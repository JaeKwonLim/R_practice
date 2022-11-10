install.packages("lubridate")
library(lubridate)

today()
now()

ymd("2030-03-15")
mdy("03/15/2030")
dmy("15032030")
ymd("300315")
ymd("2030년 3월 15일일")
dmy("15-March-2030")

mdy("march 15th, 2030")

Sys.setlocale("LC_TIME", "C")
mdy("march 15th, 2030")
Sys.setlocale()

ymd(20300315)
ymd_hms("2030-03-15 23:11:56")
ymd_hm("2030-03-15 23:11")

years <- c(2030, 2043, 2034, 2058)
months <- c(1,5,6,7)
days <- c(2,5,6,7)
hours <- c(1,6,8,10)
mins <- c(38,58,26,14)
secs <- c(15,6,25,15)

dt <- data.frame(years,months,days,hours,mins,secs)
make_date(year=dt$years, month=dt$months, day=dt$days)
make_datetime(year=dt$years, month=dt$months, day=dt$days,
              hour=dt$hours, min=dt$mins, sec=dt$secs)

ymd("2030-03-15")
as_datetime(ymd("2030-03-15"))
ymd_hms("2030-03-15 23:11:56")
as_datetime(ymd_hms("2030-03-15 23:11:56"))

datetime <- ymd_hms("1969/07/20, 20:17:39")
year(datetime)
month(datetime)
day(datetime)
hour(datetime)
minute(datetime)
second(datetime)
yday(datetime)
wday(datetime)

Sys.setlocale("LC_TIME", "C")
month(datetime, label = TRUE)
wday(datetime, label = TRUE)
Sys.setlocale()
month(datetime, label = TRUE)
wday(datetime, label = TRUE)

datetime
year(datetime) <- 2030
month(datetime) <- 8
datetime
hour(datetime) <- hour(datetime) +1
datetime
update(datetime, year=2031, month=8,hour=11)
update(datetime, yday=1)

datetime <- ymd_hms("1969/07/20, 20:17:39")

semester(datetime)
quarter(datetime)
am(datetime)
pm(datetime)

round_date(datetime, unit = "year")
round_date(datetime, unit = "month")
round_date(datetime, unit = "day")
round_date(datetime, unit = "week")
round_date(datetime, unit = "year")

floor_date(datetime, unit = "year")

ceiling_date(datetime, unit = "month")
