#Basic math operations

5 + 7 

90 - 7

7 * 8

7*8

2 ** 3

9 ^ (1/2) #exponent

sqrt(9) #square root

27^(1/3)  #this is a comment

8 + 7 * 5 #R uses order of operations

(8+7) * 5 #R executes within the parentheses first

13%%5 #modulo

7/2

7%/%2 #integer division

5 + (7*8)

num1 <- 7 #creating an object
num1 <- 8
num1 <- 9

num1 <- 10

num2 <- 9

num1 + 7 #performing math operations with an object and a number

num1

num1 + num2 #performing math operations with two objects

num1 * num2

num3 <- num1 + num2 #perorming math operations and an assignment

str1 <- "Hello" #creating an object that stores a string

str2 <- "World"

str1 + str2 #this won't work

paste(str1,str2) #this pastes the two strings together

typeof(num1) #function to check the data type stored in an object

sqrt(2)^2 - 2 #this number is just a little different than 0 because R does not have perfect precision

root2 <- 2^(1/3) #fractions in the exponents can be used for other roots

root2^3

7:9

vec1 <- 7:9

vec1 + 3 #what will happen?

vec1 * 3 #what will happen?

vec2 <- 9:11

vec1 + vec2

vec4 <- 1:6

vec1 + vec4

vec5 <- 1:5

vec5 + vec4

#you can use operations between two vectors if they are the same length the length of one is a multiple of the length of another

vec1 %*% vec2 #perform matrix algebra

seq(1,5) #creates a regular sequence from 1 to 5
1:5 #creates the same sequence

seq(1,5, by=2) #the "by" argument allows you to create gaps other than 1
seq(1,5,2) #you can put the "by" argument third without calling by name
seq(10,100,by=7)

c(1,2,3,4,5) #the "concatenate" function creates a vector

c(90,34,21,0)

test1 <- c(98,"dog") #R forces 98 to a string type since vectors must all be the same type

typeof(test1) #string

sequence <- 1:5

sequence <- c(sequence,9)

?seq() #the question mark and function name brings up th ehelp menu
seq()
?c()

?sample

sample(1:100,size = 2) #sample 2 numbers from 1 to 100

vecTest <- 1:15 #create a vector

sample(vecTest, size=15)

sample(vecTest, size = 16, replace = T) #replace defaults to false so we change to true

add2 <- function(x) { #create your own function using <- function(){}
  return(x + 7)
  x + 2
}

add2(6) #testing function

add3 <- function(x) x+3 #you can put the body on the same line as the function assignment without curly brackets

add3(19)

vec1 <- 7:9

changeNum <- function(numb){
  vec1 <<- c #use <<- to assign to a global object within a function
}

changeNum(8)

addOptToTwo <- function(x,y=2){ #adds user provided number to 2 or whatever they want
    y+x
}

addOptToTwo(1,9)

addOptToTwo(3)

addOptToTwo(y=20, x=10)

for (i in 1:6){
  print(i+9)
}

1:6 + 9

fibonacci <- c(0,1) #beginning of fibonacci sequence

for (i in 3:100){ #for loop to generate 97 more items in the sequence
  fibonacci <- c(fibonacci,fibonacci[i-1]+fibonacci[i-2])
}

fibonacci #test sequence

die <- 1:6 #create a die

sample(die,size=1)

sum(sample(die,size = 2)) #doesn't simulate rolling two dice correctly because it does not replace the results of the first roll

sum(sample(die,size =2, replace = T))

roll <- function() { #function to roll 2 dice
  dice <- sample(die, size=2, replace =T)
  sum(dice)
}

roll()

?replicate

replicate(1000, roll()) #replicate performns a function as many times as you want

rollUserDecide <- function(x){ #function allows user to decide how many rolls
  replicate(x, roll())
}

rollUserDecide(8)

rollMany <- rollUserDecide(1000)

hist(rollMany)

rollW <- function(){ #roll a weighted dice
  die <- 1:6
  dice <- sample(die,size=2,replace=T,c(1/8,1/8,1/8,1/8,1/8,3/8)) #uses a probability vector
  sum(dice)
}

rollW()

rollManyW <- replicate(1000,rollW())

hist(rollManyW)

rollW <- function(){
  die <- 1:6
  dice <- sample(die,size=2,replace=T,c(1,1,1,1,1,3)) #probability vectors do not need to sum to one
  sum(dice)
}

coinFlipW <- function(x){ #create a weighted coin flip
  sample(0:1, x, replace = T, prob = c(1,19))
}

coinFlipW(5) #test weighted coin flip

#calculate probability of each dice roll
diceResultsCalc <- NULL #create empty vector for results

for (i in 1:6){ #run a nested for loop - a loop within a loop
  for (j in 1:6){
    diceResultsCalc <- c(diceResultsCalc,i+j) #add to vector by concatenating with itself
  }
}

probVec1 <- NULL #create a blank vector for final answer

for (i in 2:12){ #count occurences 0f each possible outcome and divide by total outcomes: 36
  probVec1 <- c(probVec1,length(which(diceResultsCalc == i))/36) #uses length(which*())
}

probVec1

#calculate with simulation

roll2dice <- function(){
  sum(sample(1:6, size =2, replace = T))
}

diceResultsSim <- replicate(10000, roll2dice())



probVec2 <- NULL #vector for simulation answer

for (i in 2:12){ #count occurences each possible outcome and divide by 10,000
  probVec2 <- c(probVec2,length(which(diceResultsSim == i))/10000)
}

probVec2

plot(probVec1,probVec2)

probVec1 <- NULL

pyth <- function(s1,s2){ #function to calculate two possibilities for the third side of a triangle using pythagorean theorem
  hyp <- sqrt(s1^2 + s2^2)
  shortSide <- sqrt(s2^2 - s1^2)
  c(hyp,shortSide)
}

pyth(3,4) #test the function
