\name{vcov}
\alias{vcov.tssem1FEM}
\alias{vcov.tssem1FEM.cluster}
\alias{vcov.tssem1REM}
\alias{vcov.wls}
\alias{vcov.wls.cluster}
\alias{vcov.meta}
\alias{vcov.meta3X}
\alias{vcov.reml}
\alias{vcov.MxRAMModel}
\alias{vcov.osmasem}
\title{Extract Covariance Matrix Parameter Estimates from Objects of
  Various Classes
}
\description{It extracts the variance-covariance matrix of the
  parameter estimates from objects of various classes.
}
\usage{
\method{vcov}{tssem1FEM}(object, \dots)
\method{vcov}{tssem1FEM.cluster}(object, \dots)
\method{vcov}{tssem1REM}(object, select = c("all", "fixed", "random"), \dots)
\method{vcov}{wls}(object, R=50, \dots)
\method{vcov}{wls.cluster}(object, R=50, \dots)
\method{vcov}{meta}(object, select = c("all", "fixed", "random"), \dots)
\method{vcov}{meta3X}(object, select = c("all", "fixed", "random", "allX"), \dots)
\method{vcov}{reml}(object, \dots)
\method{vcov}{MxRAMModel}(object, \dots)
\method{vcov}{osmasem}(object, select=c("fixed", "all", "random"), \dots)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{object}{An object returned from objects of various classes
  }
  \item{select}{Select \code{all} for both fixed- and random-effects parameters, \code{fixed} for the
  fixed-effects parameters or \code{random} for the random-effects
  parameters. For \code{meta3X} objects, \code{allX} is used to extract
  all parameters including the predictors and auxiliary variables.  
}
  \item{R}{Positive integer. The number of parameter bootstrap
	replicates when \code{diag.constraints=TRUE}.
}
  \item{\dots}{Further arguments; currently none is used}
}

\value{A variance-covariance matrix of the parameter estimates.
}

\author{Mike W.-L. Cheung <mikewlcheung@nus.edu.sg>
}
\note{\code{vcov} returns \code{NA} when the \code{diag.constraints=TRUE}
  argument is used in \code{wls} objects.
}
%% ~Make other sections like Warning with \section{Warning }{....} ~
\seealso{ \code{\link[metaSEM]{tssem1}}, \code{\link[metaSEM]{wls}},
  \code{\link[metaSEM]{meta}}, \code{\link[metaSEM]{reml}}
}
\examples{
## Random-effects meta-analysis
model1 <- meta(y=yi, v=vi, data=Hox02)
vcov(model1)

## Fixed-effects only
vcov(model1, select="fixed")

## Random-effects only
vcov(model1, select="random")
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ methods }

