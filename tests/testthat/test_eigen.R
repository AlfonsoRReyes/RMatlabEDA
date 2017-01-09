context("matlab eig")

test_that("m.eig works", {
  eig <- m.eig(cov(X.mvnrnd))      # read variable from data file
  # we know these values in advance
  expected.values <- rbind(c(0.5899912, 0.00000),
                           c(0.0000000, 1.28509))
  expected.vectors <- rbind(c(0.7327235, -0.6805265),
                            c(-0.6805265, -0.7327235))
  expect_equal(eig$values,  expected.values,  tolerance = .000002)
  expect_equal(eig$vectors, expected.vectors, tolerance = .000002)
})
