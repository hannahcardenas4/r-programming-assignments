# Helper function
tukey.outlier <- function(x) {
  q <- quantile(x, c(0.25, 0.75))
  H <- 1.5 * IQR(x)
  x < (q[1] - H) | x > (q[2] + H)
}

# Corrected Tukey-multiple function
corrected_tukey <- function(x) {
  outliers <- array(TRUE, dim = dim(x))
  for (j in seq_len(ncol(x))) {
    outliers[, j] <- outliers[, j] & tukey.outlier(x[, j])
  }
  outlier.vec <- logical(nrow(x))
  for (i in seq_len(nrow(x))) {
    outlier.vec[i] <- all(outliers[i, ])
  }
  outlier.vec
}

set.seed(123)
test_mat <- matrix(rnorm(50), nrow = 10)
corrected_tukey(test_mat)
