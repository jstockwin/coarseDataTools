\name{cd.fit}
\alias{cd.fit}
\alias{cd.fit-class}
\title{An S4 Class that stores a fitted coarse data object}
\description{
  This is the output from \code{dic.fit()}, which contains
  the important bits of information about the model fit and
  key options used.
}
\section{Slots}{
  \describe{ \item{\code{ests}:}{Matrix of class
  \code{"numeric"}. This matrix summarizes the results of
  fitting the model. Rows correspond to the first parameter
  , the second parameter and then percentiles specified by
  the ptiles argument. Columns correspond to the point
  estimate, the lower and upper bounds on the 95\%
  confidence interval and the standard error of the point
  estimate. If the maximization does not converge, this
  matrix is filled with NAs.} \item{\code{conv}:}{Object of
  class \code{"numeric"}. A value of 1 indicates successful
  convergence; 0 indicates unsuccessful convergence.}
  \item{\code{MSG}:}{Object of class \code{"character"}.
  The error message returned from \code{optim()} if the
  routine fails to converge.} \item{\code{loglik}:}{Object
  of class \code{"numeric"}. Value of the estimated maximum
  log-likelihood.} \item{\code{samples}:}{Object of class
  \code{"data.frame"}. Data frame of bootstrap estimates of
  parameters (if bootstraps were performed).}
  \item{\code{data}:}{Object of class \code{"data.frame"}.
  Original data used to fit model.}
  \item{\code{dist}:}{Object of class \code{"character"}.
  Failure time distribution fit to data. "L" for
  log-normal, "G" for gamma, "W" for Weibull, and "E" for
  Erlang.} \item{\code{inv.hessian}:}{Object of class
  \code{"matrix"}. The inverse of the hessian matrix for
  the likelihood surface at the MLE. Used to determine the
  standard errors for the percentiles. Note that
  optimization is done on a transformed scale with all
  parameters logged for all distributions except the first
  parameter of the log-normal distribution.}
  \item{\code{est.method}:}{Object of class
  \code{"character"}. Method used for estimation.}
  \item{\code{ci.method}:}{Object of class
  \code{"character"}. Method used for estimation of
  confidence/credible intervals.} }
}

