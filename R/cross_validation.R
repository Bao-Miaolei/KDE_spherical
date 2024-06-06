#' Cross validation
#'
#' This function generates the optimal kappa based on Kullback-Leibler loss
#'
#' @param kappa_list a list of different kappa
#' @param X_Euc data in 3-dim Euclidean coordinates
#'
#' @return the optimal kappa
#'
#' @examples
#' kappa_list <- c(10, 20)
#' X_Euc <- matrix(c(1, 1, 1, 0, 0, 0, 0, 0, 0), ncol = 3)
#' cv(kappa_list, X_Euc)
#'
#' @export
cv <- function(kappa_list, X_Euc){
  # Calculate the cross validation score based on Kullback-Leibler loss
  cv_KL <- function(kappa, X_Euc){
    n <- nrow(X_Euc)
    f <- sapply(1:n, function(i){
      spherical.kde::f_hat(t(X_Euc[i,]), X_Euc[-i,], kappa)
    })
    return(1 / n * sum(log(f)))
  }

  # Find the optimal kappa that maximizes the score
  cv_result <- sapply(kappa_list, function(kappa) cv_KL(kappa, X_Euc))
  optimal_kappa_KL <- kappa_list[which.max(cv_result)]
  return(optimal_kappa_KL)
}


