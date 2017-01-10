#' Generates matrix of zeros
#'
#' Similar to Matlab's zeros()
#'
#' @param m number of rows
#' @param n number of columns
#'
#' @importFrom stats runif
#'
#' @export
#'
#' @examples
#' m.zeros(3)
#' m.zeros(4, 2)

m.zeros <-function(m, n = 1) {
  # replicate the Matlab zeros function
  matrix(0, nrow = m, ncol = n)
}


#' Replicates Matlab's rand(m, n)
#'
#' Matrix of mxn uniform distribution numbers
#'
#' @param m number of rows
#' @param n number of columns
#'
#' @export
m.rand <- function(m = 1, n = 1) {
  matrix(runif(m*n), n)
}

