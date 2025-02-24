% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/functions.R
\name{check_stationary}
\alias{check_stationary}
\title{Check if time series is stationary and use growth rates if not}
\usage{
check_stationary(timeseries)
}
\arguments{
\item{timeseries}{A ts object.}
}
\value{
A time series object
}
\description{
Check if time series is stationary and use growth rates if not
}
\details{
This function allows the user to check if a time series is stationary, both visually
through the level plots (ACF and PACF) and statistically through the Augmennted
Dicky-Fuller test and KPSS test. Based on the tests, we use growth rates in case of
non-stationarity or use the default time series in case of stationarity and plot
the updated results.
}
\examples{
df <- data.frame(
        time = c(1996:2016),
        CLVMNACSCAB1GQEL_PC1 = runif(n = 21, min = 1, max = 10)
)
ts <- stats::ts(df[,"CLVMNACSCAB1GQEL_PC1"],start=1996,frequency=1)
check_stationary(ts)
}
