
library(readxl)
library(ggplot2)

filepath_emp <- file.path("Intro_to_R", "Fig2.xls")

excel_sheets(filepath_emp)

unemp <- read_excel(filepath_emp,
           sheet = 1,
           skip = 6)

View(head(unemp))
str(unemp)
class(unemp)

ggplot(data=unemp, aes(x=Period, y=People, group=1)) + geom_line()+ ylim(65, max(unemp$People))

df_emp <- data.frame(date=unemp$Period, emp_all=unemp$People, emp_men=unemp$Men, emp_wom=unemp$Women, sd=tapply(unemp$People, unemp$Period, FUN = mean))

head(df_emp)

sd <- tapply(unemp$People, unemp$Period, FUN = sd)
View(head(sd))

ggplot(unemp, aes(unemp$Period, y=unemp$People)) + geom_line(colour= unemp$People)

viv <- lm(unemp$People~unemp$Period)
summary(viv)
plot(viv)

install.packages("gplots")
library(gplots)
data("ToothGrowth")
plotmeans(len ~ dose, data = ToothGrowth, frame = FALSE)
plotmeans(len ~ dose, data = ToothGrowth, frame = FALSE,
          mean.labels = TRUE, connect = FALSE)

to <- c(1,2,3)

