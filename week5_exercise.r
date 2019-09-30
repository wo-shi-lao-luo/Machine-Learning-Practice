college = read.csv("college.csv")
rownames(college) = college[ , 1]
fix(college)
college = college[, -1]
fix(college)
head(college)

set.seed(123457)
train = sample(777, 466)
college_train = college[train, ]
college_valid = college[-train, ]

mean(college_train$Grad.Rate)
sd(college_train$Grad.Rate)
mean(college_valid$Grad.Rate)
sd(college_valid$Grad.Rate)

t.test(college_train$Grad.Rate, college_valid$Grad.Rate)

t.test(1:100, 200:500)

fit1 = lm(Grad.Rate ~ ., data = college_train)
summary(fit1)
head(college_train)
Prediction = predict(fit1, newdata = college_valid)
Actual = college_valid$Grad.Rate
mean(Actual - Prediction)
RMSE = sqrt(mean(Actual - Prediction)^2)

fit2 = lm(Grad.Rate ~ Private + Outstate + Top25perc + perc.alumni + Apps + P.Undergrad + Room.Board + Expend + Personal , data = college_train)
summary(fit2)
head(college_train)
Prediction = predict(fit2, newdata = college_valid)
Actual = college_valid$Grad.Rate
mean(Actual - Prediction)
RMSE = sqrt(mean(Actual - Prediction)^2)