set.seed(27)
nrep = 10000

z = rnorm(nrep) #genero muestras al azar de una variable normal estandar

#histograma (aproximacion de la densidad) y empírica (aproximacion de la distribucion) de mis muestras
hist(z, freq=FALSE)
plot(ecdf(z))

#simulo la binomial
x = ifelse(z < qnorm(0.25),0,ifelse(z<qnorm(0.75),1,2)) 

#no puedo hacer histograma para x porque es discreta => saco frecuencia relativa
#para contar cuantos valores hay de cada una (frecuencia absoluta)
tabla = table(x)/nrep
barplot(tabla)