% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/SSplotRunstest.R
\name{SSrunstest}
\alias{SSrunstest}
\title{Residual Diagnostics Plot}
\usage{
SSrunstest(
  ss3rep = ss3diags::ss3sma,
  mixing = "less",
  quants = c("cpue", "len", "age", "con")[1],
  indexselect = NULL,
  verbose = TRUE
)
}
\arguments{
\item{ss3rep}{Stock Synthesis output as read by r4SS function SS_output}

\item{mixing}{c("less","greater","two.sided"). Default less is checking for positive autocorrelation only}

\item{quants}{optional use of c("cpue","len","age","con"), default uses CPUE.}

\item{indexselect}{Vector of fleet numbers for each model for which to compare}

\item{verbose}{Report progress to R GUI?}
}
\value{
a dataframe with runs test p-value, if the test has passed or failed, 3x sigma high and low limits, and the type of data used. Rows are for each fleet. Note, runs test passed if p-value > 0.05 (residuals are random) and failed if p-value < 0.5 (residuals are not random)
}
\description{
Function for residual diagnostics. Outputs a runs test table that gives runs test p-values, if the runs test passed (p-value > 0.05, residuals are random) or failed (p-value < 0.05, residuals are not random), the 3x sigma limits for indices or mean age or length and the type of input data (cpue, length comp, age comp, size comp, or conditional age-at-length).
}
\author{
Henning Winker (JRC-EC) and Laurance Kell (Sea++)
}
\keyword{diags}
\keyword{runsTest}
