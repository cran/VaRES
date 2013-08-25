\name{secant}
\alias{dsecant}
\alias{psecant}
\alias{varsecant}
\alias{essecant}
\title{Hyperbolic secant distribution}
\description{Computes the pdf, cdf, value at risk and expected shortfall for the hyperbolic secant distribution given by
\deqn{\begin{array}{ll}
&\displaystyle
f (x) = \frac {1}{2} {\rm sech} \left( \frac {\pi x}{2} \right),
\\
&\displaystyle
F (x) = \frac {2}{\pi} \arctan \left[ \exp \left( \frac {\pi x}{2} \right) \right],
\\
&\displaystyle
{\rm VaR}_p (X) = \frac {2}{\pi} \log \left[ \tan \left( \frac {\pi p}{2} \right) \right],
\\
&\displaystyle
{\rm ES}_p (X) = \frac {2}{\pi p} \int_0^p \log \left[ \tan \left( \frac {\pi v}{2} \right) \right] dv
\end{array}}
for \eqn{-\infty < x < \infty}, and \eqn{0 < p < 1}.}
\usage{
dsecant(x, log=FALSE)
psecant(x, log.p=FALSE, lower.tail=TRUE)
varsecant(p, log.p=FALSE, lower.tail=TRUE)
essecant(p)
}
\arguments{
  \item{x}{scaler or vector of values at which the pdf or cdf needs to be computed}
  \item{p}{scaler or vector of values at which the value at risk or expected shortfall needs to be computed}
  \item{log}{if TRUE then log(pdf) are returned}
  \item{log.p}{if TRUE then log(cdf) are returned and quantiles are computed for exp(p)}
  \item{lower.tail}{if FALSE then 1-cdf are returned and quantiles are computed for 1-p}
}
\value{An object of the same length as \code{x}, giving the pdf or cdf values computed at \code{x} or an object of the same length as \code{p}, giving the values at risk or expected shortfall computed at \code{p}.}
\references{S. Nadarajah, S. Chan and E. Afuecheta, An R Package for value at risk and expected shortfall, submitted}
\author{Saralees Nadarajah}
\examples{x=runif(10,min=0,max=1)
dsecant(x)
psecant(x)
varsecant(x)
essecant(x)}
\keyword{Value at risk, expected shortfall}
