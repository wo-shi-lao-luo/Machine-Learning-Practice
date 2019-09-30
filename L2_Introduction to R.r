setwd('.') # change the folder path to your own working directory
getwd()

# Variables
x <- 1 
x
y <- 1
y
x+y

# Vectors
x <- 1:10 
x

x <- c(1, 3, 2, 5, 7, 3, 5, 6, 2, 5, 8, 9, 9, 10, 20)
x 

sort(x) 
length(x) 
mean(x) 
median(x) 
summary(x) 
boxplot(x) 
hist(x)

hist(x, breaks=10, col="green") 
boxplot(x, range=0, col="light blue",main="Boxplot of x")

# Matrices
y <- matrix(x,nrow=5, ncol=3) 
y

y[1,1] 
y[,1] 
y[1,] 
y[3:5,2:3]
y[c(1,4),c(1,3)]

z <- matrix(1:15, nrow=5, ncol=3) 
y + z 
y * z
y %*% z[1:3,1] 

t(y)
solve(y[1:3,]) 

A <- matrix(1:4,2,2)
B <- matrix(c(1,1,1,1),2,2)
cbind(A,B) 
rbind(A,B)

# Lists
W <- c("a","b","c","d") 
W 

a <- 1:3 
b <- c("a","b","c","d", "e", "f") 
x <- list(a,b) 
x 

x[[2]] 

x[[2]][3] 

# Data Frames
W <- c("a","b","c","d") 
W 

V <- c(1:4) 
df <- data.frame(W,V) 
df 

names(df)

df[1]
df[3:4,] 
df[2,2] 
df$V
df$U <- 7:10 
df 

# Read Data from Disk
Kool.Karma = read.csv("Kool Karma Data.txt")
Kool.Karma$INCOME
hist(Kool.Karma$INCOME)
