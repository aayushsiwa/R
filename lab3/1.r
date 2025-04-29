values <- c(Inf,NA,NaN,"")
for (value in values){
  cat("Value:",value,"\n")
  cat("Class:",class(value),"\n")
  cat("Type:",typeof(value),"\n")
  cat("Mode:",mode(value),"\n")
  cat("Storage Mode:",storage.mode(value),"\n")
  cat("\n")
}