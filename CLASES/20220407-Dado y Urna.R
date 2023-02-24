# Tiremos un dado

Nrep <- 1000

uniforme <- runif(Nrep)
dado <- 1:6
tiros<-sample(dado,Nrep,replace=TRUE) # seleccionar al azar con o sin repo -> tirar un dado es como sacar de una urna bolitas del 1 al 6 con repo

proba_estimada <- mean(tiros==4)

proba_estimada

c(rep("R",5), rep("V",3), rep("B",2)) -> urna
sample(urna, 3, replace = FALSE) -> extraccion
extraccion