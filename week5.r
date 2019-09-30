uniform <- runif(n=200, min=0, max=2)
hist(uniform,col="light blue",prob=T)

normal <- rnorm(n=200, mean=3, sd=1)
hist(normal,col="light blue",prob=T)
lines(density(normal, bw=.75), col="red",lwd=2, ) 

binomial <- rbinom(n=200, 100, 0.3)
hist(binomial,col="light blue",prob=T)

exponential <- rexp(n=200, rate=3)
hist(exponential,col="light blue",prob=T)

v <- 1:100
S <- sample(v,size=10,replace=F)
hist(S, col="light blue",prob=T)

v2 <- c("Yes", "No")
S2 <-sample(v2,size=20,replace=T)
barplot(table(S2)/length(S2),col="light blue")

set.seed(123)
runif(3,0,1)
runif(5,0,1)
set.seed(123)
runif(8,0,1)

x = seq(0.25,10,0.1)
y = 2.5 + 2*x + rnorm(length(x),0,9)
df <- data.frame(x,y)
fit1 <- lm(y~x,data=df)
with( df , plot(x,y) )
abline( coef(fit1),col="magenta")

set.seed(123)
df$R <- runif(nrow(df),0,1)
df <- df[order(df$R),]

train <- sample(nrow(df),0.5*nrow(df))
df_train <- df[train,]
df_validation <- df[-train,]
m1 <- lm(y~x,data=df_train)
with( df , plot(x,y) )
fit1 <- lm(y~x,data=df)
abline( coef(fit1),col="magenta")
abline( coef(m1),col="cyan")

m1 <- lm(y~x,data=df_train)
predicted <- predict(m1,newdata=df_validation)
actual <- df_validation$y
Metrics <- c("AE", "RMSE", "MAE", "SSE")
x1 <- mean(actual- predicted)
x2 <- sqrt(mean((actual - predicted)^2))
x3 <- mean(abs(actual- predicted))
x4 <- sum(actual- predicted)^2
Values <- c(x1, x2, x3, x4)
X <- data.frame(Metrics, Values)
X