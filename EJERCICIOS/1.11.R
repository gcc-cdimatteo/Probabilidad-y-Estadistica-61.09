resultados = c()
proba_estimada = c()
nsimul = 1000

dado = function(res) {
  n = runif(1)
  for (i in 1:6){ 
    if((i-1)/6 < n & n < i/6){ res[i] = res[i]+1 } 
  }  
  return(res)
}

for (j in 1:nsimul){
  ntiradas = 1
  
  resultados_d1 = c(0,0,0,0,0,0) # (cant_1, cant_2, ... , cant_6)
  resultados_d2 = c(0,0,0,0,0,0) # (cant_1, cant_2, ... , cant_6)
  
  for (i in 1:ntiradas){ #arrojo ntiradas dos dados equilibrados
    resultados_d1 = dado(resultados_d1)
    resultados_d2 = dado(resultados_d2)
  }
  
  suma_d1 = 0
  suma_d2 = 0
  
  for (i in 1:6){
    suma_d1 = suma_d1 + resultados_d1[i]*i
    suma_d2 = suma_d2 + resultados_d2[i]*i
  }
  
  resultados[j] = suma_d1 + suma_d2 < 11
  proba_estimada[j] = resultados[j]/j
}

plot(1:nsimul, proba_estimada, col="blue", pch=20, ylim=c(0,1), 
     ylab="Probabilidad Estimada", xlab="Cantidad de Simulaciones")