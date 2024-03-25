# Module 11: Debugging and Defensive Programming in R.

# Function provided by the professor.
tukey_multiple <- function(x) {
  
  outliers <- array(TRUE,dim=dim(x))
  
  for (j in 1:ncol(x)) {
    outliers[,j] <- outliers[,j] #&& tukey.outlier(x[,j]) annotated out to be able to use the function.
  }
  
  outlier.vec <- vector(length=nrow(x))
  
  for (i in 1:nrow(x)) { 
    outlier.vec[i] <- all(outliers[i,]) 
    } 
  
  return(outlier.vec) 
  
}

#Creating a test array
testarray <- array(sample(1:100, 600, replace = T), c(100,6))

#Testing the function with the test array.
tukey_multiple(testarray)

#Using debug().
debug(tukey_multiple)
tukey_multiple(testarray)
