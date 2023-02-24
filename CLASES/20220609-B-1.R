x = c(500,488,426,510,450,368,508,514,426,476,512,526,444,524,236) #tamaño 15
lamb_sombrero = mean(x)

#bootstrap parametrico: uso la información de que es Poisson y uso el EMV
#como si furera el verdadero lambda. Es como si fuera el principio de invarianza o 
#método de plug in (enchufar el parámetro).

x_raya = c()
for (i in 1:100000){
  x = rpois(15,lamb_sombrero)
  x_raya[i] = sum(x)/length(x)
}
hist(x_raya, freq=FALSE)
lines(density(x_raya),col="deeppink")

par(mfrow=c(2,2))

