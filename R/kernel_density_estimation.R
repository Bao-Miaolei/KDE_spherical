#' KDE
#'
#' It is the KDE implementation when q = 3 and K(t) = exp(t)
#'
#' @param x new data points
#' @param X_Euc data in 3-dim Euclidean coordinates
#' @param kappa the smoothing parameter
#'
#' @return the estimated density at x
#'
#' @examples
#' x <- t(matrix(c(1, 0, 0)))
#' X_Euc <- matrix(c(1, 1, 1, 0, 0, 0, 0, 0, 0), ncol = 3)
#' f_hat(x, X_Euc, kappa = 10)
#'
#' @export
f_hat <- function(x, X_Euc, kappa){
  kernel <- function(t) exp(t)
  c_0 <- function(kappa) kappa * (4 * pi * sinh(kappa))^(-1)
  n <- nrow(X_Euc)
  x <- as.matrix(x)
  X_Euc <- as.matrix(X_Euc)
  return(1 / n * c_0(kappa) * rowSums(kernel(kappa * x %*% t(X_Euc))))
}

