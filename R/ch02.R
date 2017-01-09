#' Replicates the repmat function in Matlab/Octave
#'
#' @param M a matrix
#' @param n number of rows
#' @param m number of columns
#'
#' @export
#'
m.repmat <- function(M, n, m) {
  # replicates the repmat function in Octave
  # M should be a matrix
  kronecker(matrix(1, n, m), M)
}


#' Replicate Matlab's flipud
#'
#' @param M a matrix
#'
#' @export

m.flipud <- function(M) {
  apply(M, 2, rev)
}

#' Replicate Matlab function svd including the diag(d) which is not
#'     included in R svd()
#'
#' @param M a matrix
#' @export

m.svd <- function(M) {
  svd_ <- svd(M)
  list(d = diag(svd_$d), u = svd_$u, v = svd_$v)
}
