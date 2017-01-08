
#' EigenValues Function
#'
#' This function replicate the Matlab eig() function.
#'
#' Returns:
#'       the diagonal of eigen$values.
#'       the negative of eigen$vectors in descending order.
#' @param M a matrix
#' @keywords EDA
#' @export
#' @examples
#'

m.eig <- function(M) {
  eig <- eigen(M)
  # evalues <- matrix(eig$values, ncol = 1)
  evalues <- diag(rev(eig$values))
  evectors <- eig$vectors
  evectors <- - evectors[, dim(evectors)[1]:1] # count down
  return(list(values = evalues, vectors = evectors))
}


