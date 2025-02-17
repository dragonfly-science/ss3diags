% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/SSplotRunstest.R
\name{ssruns_sig3}
\alias{ssruns_sig3}
\title{Runs Test for Residuals}
\usage{
ssruns_sig3(x, type = NULL, mixing = "less")
}
\arguments{
\item{x}{residuals from CPUE fits}

\item{type}{only c("resid","observations")}

\item{mixing}{c("less","greater","two.sided"). Default less is checking for positive autocorrelation only}
}
\value{
runs p value and 3 x sigma limits
}
\description{
This function uses randtests::runs.test to do perform a runs test on residuals to determine if they are randomly distributed. It also calculates the 3 x sigma limits
}
\details{
runs test is conducted with library(randtests)
}
\author{
Henning Winker (JRC-EC) and Laurence Kell (Sea++)
}
\keyword{diags}
\keyword{runsTest}
