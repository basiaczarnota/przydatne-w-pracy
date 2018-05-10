# funkcja transformuje rozkład pierwotny na normalny (bardzo zbliżony do niego, bo obcinamy ogony) wyrażony na skali 0-2 ze średnią 1.

f_transform <- function(x){
  f_tmp <- ecdf(x)
  return(list(fun_norm = function(y) 
    mice::squeeze(qnorm(f_tmp(y) - 1/(2*length(x)), 1, 1/3), c(0, 2)), 
    unif = f_tmp(x), normal = mice::squeeze(qnorm(f_tmp(x) - 1/(2*length(x)), 1, 1/3), c(0, 2))))
} 