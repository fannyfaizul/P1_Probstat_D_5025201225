#soal no 6

#a
set.seed(0) 
data <- rnorm(100,50,8)
rata_rata <- mean(data)
x1 <- floor(mean(data))
x2 <- round(mean(data))

z_scores <- (data - mean(data) / sd(data))

plot(z_scores, type = "o", col="red")

#b
set.seed(0)
x <- rnorm(100,50,8)
hist(x,
     breaks = 50,
     main = "5025201225_Mohammad Fany Faizul Akbar_Probstat_D_DNhistogram")

#c
var(x)