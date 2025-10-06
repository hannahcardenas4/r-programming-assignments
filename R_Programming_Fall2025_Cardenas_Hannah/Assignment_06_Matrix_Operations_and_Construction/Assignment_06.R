# Define matrices
A <- matrix(c(2, 0, 1, 3), ncol = 2)
B <- matrix(c(5, 2, 4, -1), ncol = 2)

# Display A and B
cat("Matrix A:\n")
print(A)
cat("\nMatrix B:\n")
print(B)

# Addition and Subtraction
A_plus_B <- A + B
cat("\nResult of A + B:\n")
print(A_plus_B)

A_minus_B <- A - B
cat("\nResult of A - B:\n")
print(A_minus_B)

# Create diagonal matrix
D <- diag(c(4, 1, 2, 3))
cat("\nDiagonal matrix D:\n")
print(D)

# Construct a custom 5x5 matrix 
D <- diag(3, 5)
D[, 1] <- c(3, 2, 2, 2, 2)
D[1, 2:5] <- 1
print(D)
