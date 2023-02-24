n = 10000
u = runif(n)
x = c()

for (i in 1:length(u)){
  u_i = u[i]
  x_i = log(1-u_i)^2
  x[i] = x_i
}

plot(1:n,x, pch=20, col="deepskyblue")