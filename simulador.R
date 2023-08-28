
simulacao <- function(parametros){
  if (parametros[[1]] == 'poisson') {
    rpois(parametros[[3]], parametros[[2]])
  }
  else if (parametros[[1]] == 'normal') {
    rnorm(parametros[[4]], parametros[[2]], sqrt(parametros[[3]]))
  }
  else {
    rbernoulli(parametros[[3]],parametros[[2]])
  }

}








