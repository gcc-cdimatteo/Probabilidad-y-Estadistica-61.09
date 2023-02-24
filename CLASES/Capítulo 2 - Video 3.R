n = 10000
u = runif(n)
x = c()

for (i in 1:length(u)){
  u_i = u[i]
  x_i = 0
  if (0 <= u_i & u_i < 1/4){ x_i = 4*u_i } 
  else if (1/4 <= u_i & u_i <= 1/3){ x_i = 1 }
  else if (1/3 < u_i & u_i < 2/3){ x_i = 6*u_i }
  else if (2/3 <= u_i & u_i <= 1){ x_i = 4 }
  x[i] = x_i
}

plot(1:n,x, pch=20, col="deepskyblue")