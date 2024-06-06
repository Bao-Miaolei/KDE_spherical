#' Transform coordinates
#'
#' This function transforms spherical coordinates (longitude, latitude) to 3-dim Euclidean coordinates
#'
#' @param point_list  a series of data points in spherical coordinates
#'
#' @return data in 3-dim Euclidean coordinates
#'
#' @examples
#' X <- t(matrix(180, 90))
#' X_Euc <- transform_coordinates(X)
#'
#' @export
transform_coordinates <- function(point_list) {
  theta <- point_list[,1] * pi/180
  phi <- point_list[,2] * pi/180
  x <- cos(phi) * cos(theta)
  y <- cos(phi) * sin(theta)
  z <- sin(phi)
  return(cbind(x, y, z))
}


