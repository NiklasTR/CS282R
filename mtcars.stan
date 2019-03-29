data{
  int<lower=0> N; 
  vector[N] wt;
  vector[N] cyl;
  vector[N] mpg;
}

parameters{
  real alpha;
  real beta;
  real gamma;
  real<lower=0> sigma;
}

model{
 mpg ~ normal(alpha + beta*wt + gamma*cyl, sigma);
}