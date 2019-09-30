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

