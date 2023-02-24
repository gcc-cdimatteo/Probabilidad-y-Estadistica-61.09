# Quien trae las medialunas

#set.seed(27)

#runif(1,0,1) # -> me da un numero random entre 0 y 1

# P(Sale Cara) y P(Sale Ceca)

set.seed(27)
Nrep <- 100000
n <- 10000
proba_estimada <- c()

for (i in 1:n) {
  aleatorio <- runif(Nrep,0,1) 
  moneda <- ifelse(aleatorio<=0.5,"cara", "ceca")
  proba_estimada[i] <- sum(moneda=="cara")/Nrep
  
}

plot(1:n,proba_estimada, pch=20, col="deepskyblue")
abline(h=0.5, lty=2)

# P(Sale Cara) y P(Sale Ceca) aumentando la precision

set.seed(27)
Nrep <- 10000
proba_estimada2 <- c()

for (i in 1:Nrep) {
  aleatorio <- runif(i,0,1) 
  moneda <- ifelse(aleatorio<=0.5,"cara", "ceca")
  proba_estimada2[i] <- sum(moneda=="cara")/i
  
}

plot(1:Nrep,proba_estimada2, pch=20, col="deepskyblue")
abline(h=0.5, lty=2)