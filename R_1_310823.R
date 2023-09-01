#assignment of variables and basic math
a<-1
a
a*2
a+5
b<- 10
b/2
#log function and exp
?log()  #get details of the function using "?"

#all the below four will bring same results
log(8, base = 2)
log(8,2)
log(x=8,base=2)
log(base=2,x=8)

#vectors 
v<-c(2, 3, 5, 7, 11)
vect<-c(1:5)
rep(c(2, 3), times = 2)
rep(c(2, 3), times = c(2, 2))
rep(c(2, 3), times = c(2, 3))
rep(c(2, 3), length.out = 6)
rep(c("Bryan", "Darrin"), each = 2)
seq(from = 1, to = 11, by = 2)
primes<-c(2,3,5,7,11)
primes^(1 / 2)
log(primes)


#indexing 
dummy<-c(1:10)
rep(dummy,5)
?rep

rep(1:10, c(2,1,2,1,1,1,2,3,2,1))


dummy
dummy[1]
dummy[3]
dummy[1:3]
dummy[-1:-3]
dummy[-10]
dummy[2]*2


#finding mean and small conditional statements
rolls<-c(1,4,5,2,6,3,7,4,6)

K_rolls<-rolls>4 #k_rolls will have all values which satisfies the condition of >4
mean(rolls)
sum(rolls)/length(rolls)
#below gives you values which are greater than condition
rolls[K_rolls]
#below gives you positions which are greater than condition
which(K_rolls)
?which
#below gives you the count of values in the vector
table(rolls)

#working with inbuilt datasets
data<-rivers
a<-class(mtcars)#data frame
#play with dataset
str(mtcars)#gives details of dataset
?str()
#below displays first few rows of data
head(mtcars)
#below givesall the data where cyl =6
mtcars[mtcars$cyl==6,]
C<-mtcars["cyl"]

