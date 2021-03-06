\name{loglikhd}
\alias{loglikhd}
\title{Negative log likelihood for a dataset of interval-censored data, given a
distribution and its parameters.}
\usage{
  loglikhd(pars, dat, dist)
}
\arguments{
  \item{pars}{vector of the transformed (estimation scale)
  parameters}

  \item{dat}{a dataset, as in \code{dic.fit}}

  \item{dist}{a distribution, as in \code{dic.fit}}
}
\value{
  negative log-likelihood for a given dataset, parameters,
  and distribution.
}
\description{
  Negative log likelihood for a dataset of
  interval-censored data, given a distribution and its
  parameters.
}
\details{
  This package uses two versions of each parameter, the
  estimation scale, or the scale that is used for numerical
  optimization, and the reporting scale, or the natural
  scale of the parameters. For all likelihood calculations,
  this \code{loglikhd} function expects parameters that are
  on the estimation scale, i.e. have range \eqn{(-\infty,
  \infty)}.  Specifically, this translates into all
  parameters for all distributions being log-transformed
  except for the meanlog (i.e. "par1") for the log-normal
  distribution.
}

