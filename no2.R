
#a
set.seed(0)
dbinom(x=4,20,0.2)
 
#b
set.seed(0)
data <- rbinom(20,20,0.2)
hist(data,
     xlim = c(0,8))

#c
n=20 
p=0.2 
q=1-p 

#rata rata distribusi binomial
set.seed(0)
data <- rbinom(20,20,0.2)
mean(data)

#variance sample
set.seed(0)
data <- rbinom(20,20,0.2)
var(data)