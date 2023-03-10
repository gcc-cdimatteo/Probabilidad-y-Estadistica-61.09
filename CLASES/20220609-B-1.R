x = c(500,488,426,510,450,368,508,514,426,476,512,526,444,524,236) #tama?o 15
lamb_sombrero = mean(x)

#bootstrap parametrico: uso la informaci?n de que es Poisson y uso el EMV
#como si furera el verdadero lambda. Es como si fuera el principio de invarianza o 
#m?todo de plug in (enchufar el par?metro).

x_raya = c()
for (i in 1:100000){
  x = rpois(15,lamb_sombrero)
  x_raya[i] = sum(x)/length(x)
}
hist(x_raya, freq=FALSE)
lines(density(x_raya),col="deeppink")

par(mfrow=c(2,2))

