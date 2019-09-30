# Tree: Correlation
x = c(8,9,7,6,13,7,11,12)
y = c(35,49,27,33,60,21,45,51)
plot(x,y,xlim=c(0,14), ylim=c(0,70))
cor(x,y)

xy = x * y
y_square = y ^ 2
x_square = x ^ 2
sum(xy)
sum(y_square)
sum(x_square)
n = length(x)

r = (n * sum(xy) - sum(x)*sum(y))/sqrt((n*sum(x_square)-sum(x)^2)*(n*sum(y_square)-sum(y)^2))



# House Model
x = c(1400,1600,1700,1875,1100,1550,2350,2450,1425,1700)
y = c(245,312,279,308,199,219,405,324,319,255)
house = data.frame(x,y)
house
plot(house, xlim=c(0,3000), ylim=c(0,450))
model = lm(y~x, data=house)
summary(model)

model$coefficients
b0 = model$coefficients[1]
b1 = model$coefficients[2]
x_line = seq(3000)
y_line = b0 + b1*x_line
lines(x_line, y_line)

# Beer Model
setwd('C:/Users/wei_chen/Desktop/##GWU_LectureSlides/wk3')
beer = read.csv("Beer+Preferences.txt")
head(beer)
beer$Light = beer$Preference=="Light"
beer$Income = as.numeric(beer$Income)
beer
model = lm(Light~Gender+Married+Income+Age, data=beer)
summary(model)


























