% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/covariancecorrelation.R
\name{CovarianceAndCorrelationMatrix}
\alias{CovarianceAndCorrelationMatrix}
\title{\code{CovarianceAndCorrelationMatrix}}
\usage{
CovarianceAndCorrelationMatrix(
  data,
  weights = NULL,
  pairwise = FALSE,
  use.correlation = TRUE
)
}
\arguments{
\item{data}{A data frame containing the input data.}

\item{weights}{A numeric vector containing the value of the weight for each
row of \code{data}. If weights is NULL then this function is just a wrapper
for the base functions \code{cov} and \code{cor}.}

\item{pairwise}{A logical value. If \code{TRUE} the correlations or
covariances will be computed using the complete data for each pair of
variables from \code{data}. If \code{FALSE} then cases with missing data
will be excluded from the computation.}

\item{use.correlation}{A logical value specifying whether a correlation or
covariance matrix should be returned.}
}
\description{
Generate a covariance or correlation matrix from weighted or
  unweighted data using either the set of complete observations, or using
  pairwise-complete observations.
}
\examples{
my.data <- cbind(c(-0.9, 0.05, 0.1, 0.8), c(1, NaN, 0, -0.9))
my.weight <- c(1.2, 0.8, 0.8, 1.2)
CovarianceAndCorrelationMatrix(my.data, weights = my.weight, pairwise = TRUE)
}
