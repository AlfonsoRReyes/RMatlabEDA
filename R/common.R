#' Generates matrix of zeros
#'
#' Similar to Matlab's zeros()
#'
#' @param m number of rows
#' @param n number of columns
#'
#' @export

m.zeros <-function(m,n) {
  # replicate the Matlab zeros function
  matrix(0,nrow=m, ncol=n)
}

