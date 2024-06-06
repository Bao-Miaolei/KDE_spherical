context("Testing kernel density estimation")

# Checking that the function outputs something that is the correct type
test_that("two vectors having the same angle with the data will have the same estimation value", {
  X_Euc <- matrix(c(1, 0, -1, 0, 1, 0, 0, 0, 0), ncol = 3)
  x_1 <- t(matrix(c(1/sqrt(3), 1/sqrt(3), 1/sqrt(3))))
  x_2 <- t(matrix(c(-1/sqrt(3), 1/sqrt(3), 1/sqrt(3))))
  f_1 <- f_hat(x_1, X_Euc, kappa = 10)
  f_2 <- f_hat(x_2, X_Euc, kappa = 10)
  expect_true(f_1 == f_2)
})


