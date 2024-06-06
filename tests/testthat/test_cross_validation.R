context("Testing cross_validation")

# Checking that the function outputs something that has right structure
test_that("cross_validation returns a larger or the same optimal kappa when given a longer list", {
  kappa_list_1 <- 10^seq(1, 3, length.out = 10)
  kappa_list_2 <- c(10^seq(1, 3, length.out = 10), 10^seq(3, 5, length.out = 10))
  X_Euc <- matrix(c(1, 1, 1, 0, 0, 0, 0, 0, 0), ncol = 3)
  optimal_kappa_1 <- cv(kappa_list_1, X_Euc)
  optimal_kappa_2 <- cv(kappa_list_2, X_Euc)
  expect_true(optimal_kappa_1 <= optimal_kappa_2)
})
