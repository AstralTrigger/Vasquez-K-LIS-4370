# Setting up the matrices.
A <- matrix(1:100, nrow = 10)
B <- matrix(1:1000, nrow = 10)

# Transpose A and B  given a matrix or data.frame x, t returns the transpose of x. 
t(A)

# t(B) # Printing this would show too many values, left omitted.

#create two vectors (a and b)
a <- sample(1:100, 100, replace = TRUE)
b <- sample(1:1000, 1000, replace = TRUE)

#multiply matrices by vectors
A*a

# B*b # Printing this would show too many values, left omitted.

#re-assign the vectors a and b to equal the number of rows of the column for the corresponding matrix.
a <- matrix(a, nrow = 10)
b <- matrix(b, nrow = 10)

#Multiply the matrix by a matrix
A%*%a

# B%*%b # Kept getting error "non-comfortable arguments"? I made sure that I had the
# same length of rows/columns in each matrix but it wouldn't work. Continuing with a.

#Inverse a matrix
solve(a)

#check det()
det(a)
