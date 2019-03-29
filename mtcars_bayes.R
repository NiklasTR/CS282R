library(rstan)

model <- lm(mpg ~ wt, data = mtcars)
summary(model)

model_stan <- stan("mtcars.stan", 
                   data = list(N=nrow(mtcars),
                               mpg = mtcars$mpg,
                               wt = mtcars$wt),
                   iter = 1000)
model_stan_summary <- summary(model_stan)

pairs(model_stan, pars = c("alpha", "beta"))

model_stan_summary$summary
