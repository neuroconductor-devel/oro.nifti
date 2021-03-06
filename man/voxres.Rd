% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/voxres.R
\name{voxres}
\alias{voxres}
\title{Gets Voxel Resolution}
\usage{
voxres(img, units = c("mm", "cm"))
}
\arguments{
\item{img}{nifti object}

\item{units}{output unit, either cubic mm or cubic cm.}
}
\value{
Scalar numeric, one number, in cubic mm or cubic cm (cc/mL).
}
\description{
Grabs the 3 voxel dimensions and takes the product
}
