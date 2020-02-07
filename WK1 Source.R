5 + 7 #Addition
90 - 7 #Subtraction
100 %% 26 #Modulos Division
7*8 #Multiplication
2**3 #Exponent
2^3 #Exponent
9**(1/2) 
sqrt(9)
#Wooooooppppppsssss
"""
This is for block comments
"""
8 + 7 * 5
(8 + 7) * 5
7/2
7%/%2
num1 <- 7
num1 * 3
str1 <- "Hello world"
str2 <- "F Hello WOrld"
paste(str1,str2)
typeof(num1)
num2 <- 27
num3 <- 12
root2 <- 2^(1/3)
sq2 <- 2.5^2
7:9
veq1 <- 7:12
vec1 + 3
veq1 + 3
vec2 <- 20:22
veq1 * vec2
seq(1,5)
seq(1,9, by=2)
c(vec2,veq1,50)
c(str1,str2)
?seq()
?rep
?sample

sample(1:100,size=2)
smpl1 <- sample(1:100,2)
vecTst <- 1:15
sample(vecTst, 15)
add2 <- function(x) {
  x + 2
}
add2(num2)
add3 <- function(x) x + 3
add3(3)

changeNum <- function(numb){
  veq1 <<- c(veq1,numb)
  return(veq1)
}
changeNum(8)

addOpp2to <- function(x,y=2) { #adds user provided # to 2 
  return(y+x)
} 
addOpp2to(3)
addOpp2to(3,3)
addOpp2to(y=20,x=15)

for(i in 1:6){
  print(i+7)
}
#Fibonacci Sequence
fibonacci <- c(0,1) #Beginning of Fib sequence
for(i in 3:100){
  fibonacci <- c(fibonacci,fibonacci[i-1]+fibonacci[i-2])
  print(fibonacci)
}
#creating dice
d4 <- 1:4
d6 <- 1:6
d8 <- 1:8
d10 <- 1:10
d12 <- 1:12
d20 <- 1:20
sample(d6,size=1)
d6Roll2 <- function() {
  sum(sample(d6, size = 2, replace = T))
}
d6Roll2()

?replicate
?replicate()
replicate(1000, d6Roll2())
rollUsrDecd <- function(x){
  replicate(x,d6Roll2())
}
rollUsrDecd(8)
rollMany <- rollUsrDecd(1000)
hist(rollMany)

rollW <- function(){
  die <- 1:6
  dice <- sample(die,size=2,replace=T,c(1/8,1/8,1/8,1/8,1/8,3/8))
  sum(dice)
}
rollW()
rollManyW <- replicate(100,rollW())
hist(rollManyW)

rollW2 <- function(){
  die <- 1:6
  dice <- sample(die,size=2,replace=T,c(1,1,1,1,1,3))
  sum(dice)
}
coinFlipW <- function(x){
  sample(0:1, x, replace = T, prob = c(1,19))
}
coinFlipW(40)

diceResult <- NULL

for(i in 1:6){
  for(j in 1:6){
    diceResult <- c(diceResult,i+j)
  }
}
diceResult <- diceResult/36
hist(diceResult)

#calculate with simulation
roll2dice <- function(){
  sum(sample(1:6,size=2,replace=T))
}
diceResultSim <- replicate(10000, roll2dice())
probVec2 <- NULL #vector for sim answer
for(i in 2:12){
  probVec2 <- c(probVec2,length(which(diceResultSim==i))/10000)
  
}
probVec1 <- NULL #vector for sim answer
for(i in 2:12){
  probVec1 <- c(probVec1,length(which(diceResultSim==i))/10000)
  
}
probVec2
plot(probVec1,probVec2)
length(fibonacci)

pythagT <- function(s1,s2){
  hyp <- sqrt(s1^2 + s2^2)
  shortSide <- sqrt(s2^2 - s1^2)
  c(hyp,shortSide)
}
pythagT(3,4)
