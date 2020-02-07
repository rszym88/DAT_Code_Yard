d8 <- 1:8
d6 <- c(1:4,6,6)

sample(d6,size=2,replace=T)
sample(d8,size=2,replace=T,prob = c(1,1,1,1,1,1,2,4))

sum()
