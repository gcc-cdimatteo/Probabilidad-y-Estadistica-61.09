datos = read.table("20220609-datos.txt", header = TRUE)

#quiero estimar la media

#estimación puntual
x_raya = mean(datos$x)

Nboot = 1000
x_raya = c()

for (i in 1:Nboot){
  muestra_b = sample(datos$x,100,replace=TRUE)
  x_raya[i] = mean(muestra_b)  
}
hist(x_raya, freq=FALSE)
lines(density(x_raya), col="chocolate")

## mediana: es el cuantil 0.5
mediana_est = median(datos$x)
summary(datos$x)
hist(datos$x, freq=FALSE)

Nboot = 1000
mediana_est = c()

for (i in 1:Nboot){
  muestra_b = sample(datos$x,length(datos$x),replace=TRUE)
  mediana_est[i] = median(muestra_b)  
}
hist(mediana_est, freq=FALSE)
lines(density(mediana_est), col="chocolate")
