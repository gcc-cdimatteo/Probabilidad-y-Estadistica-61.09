# Mediante 20 simulaciones estimar la probabilidad de obtener al menos
# dos as en doce tiros de un dado

nsimul = 20
ntiros = 12

resultados = c()

for (i in 1:nsimul){
  tiros = dado(ntiros)
  resultados[i] = sum(tiros==1)>=2
}

dado = function(cant_tiros) {
  return(sample(1:6,cant_tiros,replace=TRUE))
}

sum(resultados)/nsimul