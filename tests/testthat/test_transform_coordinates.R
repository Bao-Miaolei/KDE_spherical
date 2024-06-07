context("Testing data_transformation")

# Checking that the function outputs something that has right structure
test_that("data_transformation returns the correct structure", {
  X <- matrix(1:180, ncol = 2)
  X_Euc <- transform_coordinates(X)
  expect_true(ncol(X_Euc) == 3)
  expect_true(round(sum(X_Euc^2)) == nrow(X))
})
