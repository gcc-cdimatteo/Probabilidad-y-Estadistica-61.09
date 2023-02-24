n <- 1
TT <- rexp(n,1) #el segundo parametro es el parametro de la VA
x <-  ifelse(TT < -log(3/4),0,ifelse(TT < -log(1/4),1,2))
x