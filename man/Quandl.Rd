\name{Quandl}
\alias{Quandl}
\title{Pulls Data from the Quandl API}
\usage{
  Quandl(code, type = c("raw", "ts", "zoo", "xts"),
    start_date, end_date,
    transformation = c("", "diff", "rdiff", "normalize", "cumul"),
    collapse = c("", "weekly", "monthly", "quarterly", "annual"),
    authcode = Quandl.auth())
}
\arguments{
  \item{code}{Dataset code on Quandl specified as a
  string.}

  \item{type}{Type of data returned specified as string.
  Can be 'raw', 'ts', 'zoo' or 'xts'.}

  \item{start_date}{Use to truncate data by start date in
  'yyyy-mm-dd' format.}

  \item{end_date}{Use to truncate data by end date in
  'yyyy-mm-dd' format.}

  \item{transformation}{Apply Quandl API data
  transformations.}

  \item{collapse}{Collapse frequency of Data.}

  \item{authcode}{Authentication Token for extended API
  access by default set by \code{\link{Quandl.auth}}.}
}
\value{
  Depending on the outpug flag the class is either
  data.frame, time series, xts, or zoo
}
\description{
  An authentication token is needed for access to the
  Quandl API multiple times. Set your \code{access_token}
  with \code{Quandl.auth} function.
}
\details{
  For instructions on finding your authentication token go
  to www.quandl.com/API
}
\examples{
\dontrun{
quandldata = Quandl("NSE/OIL", collapse="monthly", start_date="2013-01-01", type="ts")
plot(quandldata[,1])
}
}
\author{
  Raymond McTaggart
}
\references{
  This R package uses the Quandl API. For more information
  go to http://www.quandl.com/api. For more help on the
  package itself go to http://www.quandl.com/help/r.
}
\seealso{
  \code{\link{Quandl.auth}}
}

