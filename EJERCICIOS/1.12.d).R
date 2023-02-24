# Repetir los incisos anteriores para 1000 simulaciones

nsimul = 1000
ntiros_A = 6
ntiros_B = 12

proba_estimada_A = c()
proba_estimada_B = c()

for (j in 1:nsimul){
  resultados_A = c()
  resultados_B = c()
  
  for (i in 1:j){
    tiros = dado(ntiros_A)
    resultados_A[i] = sum(tiros==1)>=1
  }
  
  for (i in 1:j){
    tiros = dado(ntiros_B)
    resultados_B[i] = sum(tiros==1)>=2
  }
  
  proba_estimada_A[j] = sum(resultados_A)/j
  proba_estimada_B[j] = sum(resultados_B)/j
}


dado = function(cant_tiros) {
  return(sample(1:6,cant_tiros,replace=TRUE))
}

plot(1:nsimul, proba_estimada_A, col="blue", pch=20, ylim=c(0,1), 
     xlab="Probabilidad Estimada", ylab="Cantidad de Simulaciones")
#lines(1:nsimul, proba_estimada_A, col="blue")

points(1:nsimul, proba_estimada_B, col="red", pch=20)
#lines(1:nsimul, proba_estimada_B, col="red")

