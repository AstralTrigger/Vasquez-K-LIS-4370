# Module 6: Doing Math in R Part 2.

# Creating matrices
A <- matrix(c(2, 0, 1, 3), ncol = 2)
B <- matrix(c(5, 2, 4, -1), ncol = 2)

# Doing some addition and subtraction.
A + B
A - B

# Creating a matrix and running the diag() function.
C <- c(4, 1, 2, 3)
diag(C, 4, 4)

# Generating a specific matrix
M <- c(3, 3, 3, 3, 3)
D <- diag(M, 5, 5)
D

D[2:5,1] <- 2
D

D[1, 2:5] <- 1
D
