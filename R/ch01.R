#' EigenValues Function
#'
#' This function replicate the Matlab eig() function.
#'
#' @param M a matrix
#' @keywords EDA
#' @export
#' @return the decompostion of M is returned as components of a list with components
#'   \item{values}{values the diagonal of eigen$values.}
#'   \item{vectors}{vectors the negative of eigen$vectors in descending order.}
#' @seealso
#'  \code{\link{eigen}} for native \code{eigen} function.
#' @importFrom MASS mvrnorm
#' @examples
#' library(MASS)
#' n <- 100
#' mu <- c(-2, 2)
#' sigma <- matrix(c(1, 0.5, 0.5, 1), nrow = 2)
#' x <- mvrnorm(n, mu, sigma)
#' eig <- m.eig(cov(x))
#'
#' # will load mvnrnd.RData file
#' eigX <- m.eig(cov(X.mvnrnd))

m.eig <- function(M) {
  eig <- eigen(M)
  # evalues <- matrix(eig$values, ncol = 1)
  evalues <- diag(rev(eig$values))
  evectors <- eig$vectors
  evectors <- - evectors[, dim(evectors)[1]:1] # count down
  return(list(values = evalues, vectors = evectors))
}







# #' Operator to raise matrix to 'n' power
# #'
# #' Create a special operator for raising matrix to a `n` power
# #' @param M a matrix
# #' @param n the power to raise to
# #'
# #' @return a matrix
# #' @export
# "%^%" <- function(M, n)
#   with(eigen(x),
#        vectors %*%
#          (values^n * t(vectors))
#   )


