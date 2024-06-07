#' Visualization
#'
#' This function generates visualization results
#'
#' @param X_Euc data in 3-dim Euclidean coordinates
#' @param kappa the smoothing parameter
#'
#' @return visualization results
#'
#' @examples
#' X_Euc <- matrix(c(1, 1, 1, 0, 0, 0, 0, 0, 0), ncol = 3)
#' generate_plot(X_Euc, kappa = 10)
#'
#' @export
generate_plot <- function(X_Euc, kappa){
  # Generate the grid
  sph_grid <- data.frame(log = seq(-180, 180, length.out = 300),
                         lat = seq(-180, 180, length.out = 300))
  grid <- data.frame(xgrid = numeric(90000),
                     ygrid = numeric(90000),
                     zgrid = numeric(90000),
                     f = numeric(90000))
  grid[,1:3] <- SphericalKDE::transform_coordinates(expand.grid(log = sph_grid$log,
                                                  lat = sph_grid$lat))

  # Calculate the estimation over the grid
  sph_pred <- function(grid, X_Euc, kappa){
    x <- grid[, 1:3]
    grid[, 4] <- SphericalKDE::f_hat(x = x, X = X_Euc, kappa = kappa)
    return(grid)
  }
  grid <- sph_pred(grid, X_Euc, kappa)

  # Plot
  estimation_plot <- plotly::plot_ly()

  estimation_plot <- plotly::add_markers(
    estimation_plot,
    x = grid$xgrid,
    y = grid$ygrid,
    z = grid$zgrid,
    color = grid$f,
    marker = list(size = 1.5)
  )

  estimation_plot <- plotly::add_trace(
    estimation_plot,
    type = "scatter3d",
    mode = "markers",
    x = X_Euc[,1],
    y = X_Euc[,2],
    z = X_Euc[,3],
    marker = list(size = 4)
  )

  estimation_plot <- plotly::layout(
    estimation_plot,
    scene = list(
      xaxis = list(range = c(-1.2, 1.2)),
      yaxis = list(range = c(-1.2, 1.2)),
      zaxis = list(range = c(-1.2, 1.2))
    )
  )
  return(estimation_plot)
}



