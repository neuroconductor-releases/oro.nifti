% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/quaternion.R
\name{quaternion2rotation}
\alias{quaternion2rotation}
\alias{quaternion2mat44}
\title{Convert Quaternion into a Rotation Matrix}
\usage{
quaternion2rotation(b, c, d, tol = 1e-07)

quaternion2mat44(nim, tol = 1e-07)
}
\arguments{
\item{b}{is the quaternion \eqn{b} parameter.}

\item{c}{is the quaternion \eqn{c} parameter.}

\item{d}{is the quaternion \eqn{d} parameter.}

\item{tol}{is a very small value used to judge if a number is essentially
zero.}

\item{nim}{is an object of class \code{nifti}.}
}
\value{
The (proper) \eqn{3{\times}3}{3x3} rotation matrix or
\eqn{4{\times}4}{4x4} affine matrix.
}
\description{
The affine/rotation matrix \eqn{R} is calculated from the quaternion
parameters.
}
\details{
The quaternion representation is chosen for its compactness in representing
rotations.  The orientation of the \eqn{(x,y,z)} axes relative to the
\eqn{(i,j,k)} axes in 3D space is specified using a unit quaternion
\eqn{[a,b,c,d]}, where \eqn{a^2+b^2+c^2+d^2=1}{a*a+b*b+c*c+d*d=1}.  The
\eqn{(b,c,d)} values are all that is needed, since we require that
\eqn{a=[1-(b^2+c^2+d^2)]^{1/2}}{a=sqrt(1.0-(b*b+c*c+d*d))} be non-negative.
The \eqn{(b,c,d)} values are stored in the (\code{quatern_b},
\code{quatern_c}, \code{quatern_d}) fields.
}
\examples{

## This R matrix is represented by quaternion [a,b,c,d] = [0,1,0,0]
## (which encodes a 180 degree rotation about the x-axis).
(R <- quaternion2rotation(1, 0, 0))
}
\references{
NIfTI-1\cr \url{http://nifti.nimh.nih.gov/}
}
\author{
Brandon Whitcher \email{bwhitcher@gmail.com}
}
