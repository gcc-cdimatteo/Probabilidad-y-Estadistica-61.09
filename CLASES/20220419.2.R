set.seed(27)
nrep = 10000

u = runif(nrep) #generamos los numeros al azar entre 0 y 1
x = (-27*log(1-u))^(2/3) #simulamos los valores de x a partir de la transfomación que encontramos de forma aleatoria

#graficamos la distribucion empirica, queremos que se parezca a la verdadera funcion de distribucion de X
plot(ecdf(x), main="distribucion empirica",
     xlab="variable x")
par(mfrow=c(1,1))

#armamos una grilla para graficar la funcion verdadera
grilla = seq(0,25,0.1)
Fx = 1-exp(-grilla^(3/2)/27)

#superponemos el grafico anterior
lines(grilla,Fx,col="red",lwd=2)