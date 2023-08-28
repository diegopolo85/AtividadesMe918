source("executa.R")

salvar <- function(i){
  
  plano <- planos[[i]]
  result <- simulacao(plano)
  distribuicao <- plano$distribution
  obs <- plano$obs
  
  if(i <10){
    
    j <- paste0("0",as.character(i))
    
  } else{
    
    j <- as.character(i)
  }
  
  if(distribuicao == "bernoulli"){
    p <- plano$p
    save(distribuicao, p, obs, result, file = paste0("resultados/simulacao", j, ".RData"))
  }else if(distribuicao == "poisson"){
    lambda <- plano$lambda
    save(distribuicao, lambda, obs, result, file = paste0("resultados/simulacao", j, ".RData"))
  }else if(distribuicao == "normal"){
    mu <- plano$mu
    sigma2 <- plano$sigma2
    save(distribuicao, mu, sigma2, obs, result, file = paste0("resultados/simulacao", j, ".RData"))
  }
}

walk(1:length(planos), salvar)


library(purrr)
library(devtools)

