Nrep <- 1000

n <- 70

coincide <- c()

for (i in 1:Nrep) {
  cumple <- sample(1:365,n,replace=TRUE)
  coincide[i] <- length(unique(cumple)) < n # -> me da los no repetidos. me fijo cuanto mide
}

mean(coincide)

cumple <- function(n) {
  p <- 1-(choose(365,n)*factorial(n))/365^n
  return(p)
}

cumple(n)

x <- seq(1,121,1)
prob.cumple <- cumple(x)
plot(x,prob.cumple,pch=20)
abline(h=0.5, col="chocolate", lwd=2)
prob.cumple > 0.5