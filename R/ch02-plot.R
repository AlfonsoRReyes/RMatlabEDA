#' Draw Projection Matrix 2D Line
#'
#' draw the projection line given the projection matrix of angle theta
#'
#' @param M projection matrix
#' @param ... other parameters for \code{\link{abline}}
#'
#' @importFrom graphics abline
#' @importFrom stats lm
#'
#' @export
#'

projectionMatrixLine <- function(M, ...) {
  # draw infinite line given two point coordinates or vectors
  segmentInf(M[,1], M[,2], ...)
}

segmentInf <- function(xs, ys, ...){
  fit <- lm(ys~xs)
  abline(fit, ...)
}

