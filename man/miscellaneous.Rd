% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/miscellaneous.R
\name{nsli}
\alias{nsli}
\alias{NSLI}
\alias{ntim}
\alias{NTIM}
\title{Dimension Accessor Functions}
\usage{
nsli(x)

NSLI(x)

ntim(x)

NTIM(x)
}
\arguments{
\item{x}{is a three- or four-dimensional array (e.g., read in from an
ANALYZE/NIfTI file).}
}
\value{
Third (slice) or fourth (time) dimension of the array.
}
\description{
Functions to extract the higher dimensions from ANALYZE/NIfTI data.
}
\details{
Simple calls to \code{dim} to replicate the functionality of \code{nrow} and
\code{ncol} for higher dimensions of an array that are commonly required
when manipulating medical imaging data.
}
\seealso{
\code{\link{readNIfTI}}, \code{\link{readANALYZE}}
}
\author{
Brandon Whitcher \email{bwhitcher@gmail.com}
}
\keyword{misc}
