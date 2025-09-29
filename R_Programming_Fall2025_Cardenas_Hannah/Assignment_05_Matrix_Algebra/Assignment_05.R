# Create the matrices
A <- matrix(1:100,  nrow = 10)    # 10 x 10
B <- matrix(1:1000, nrow = 10)    # 10 x 100

# Check dimensions
dim(A)  # 10 10
dim(B)  # 10 100
cat("Dimensions of A:\n"); print(dim(A))
cat("Dimensions of B:\n"); print(dim(B))

# Try inverse and determinant for A
invA <- tryCatch(solve(A), error = function(e) e)
detA <- tryCatch(det(A),   error = function(e) e)
cat("\nInverse of A (expected to fail – singular matrix):\n"); print(invA)
cat("Determinant of A:\n"); print(detA)

# Try inverse and determinant for B
invB <- tryCatch(solve(B), error = function(e) e)
detB <- tryCatch(det(B),   error = function(e) e)
cat("\nInverse of B (expected to fail):\n"); print(invB)
cat("Determinant of B (expected to fail):\n"); print(detB)

# Explore matrix operations
A_t <- t(A)
B_t <- t(B)

v <- 1:10
A_multiplied <- A %*% v

C <- A %*% B
dim(C)
cat("\nResult of A %*% v:\n"); print(A_multiplied)
cat("Dimensions of C (A %*% B):\n"); print(dim(C))

