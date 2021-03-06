\name{start}

\alias{start}
\alias{start<-}
\alias{end}
\alias{end<-}
\alias{width}
\alias{width<-}

\title{Start, end, width generic getters and setters}

\description{
  Get or set the start, end, or width of an object.

  NOTE: This man page is for the \code{start}, \code{`start<-`},
  \code{end}, \code{`end<-`}, \code{width}, and \code{`width<-`}
  \emph{S4 generic functions} defined in the \pkg{BiocGenerics} package.
  See \code{?stats::\link[stats]{start}} for the \code{start} and \code{end}
  S3 generics defined in the \pkg{stats} package.
}

\usage{
start(x, ...)
start(x, ...) <- value

end(x, ...)
end(x, ...) <- value

width(x)
width(x, ...) <- value
}

\arguments{
  \item{x}{
    An object containing start, end, and width values.
  }
  \item{...}{
    Additional arguments, for use in specific methods.
  }
  \item{value}{
    The start, end, or width values to set on \code{x}.
  }
}

\value{
  See specific methods defined in Bioconductor packages.
}

\seealso{
  \itemize{
    \item \code{stats::\link[stats]{start}} in the \pkg{stats} package
          for the \code{start} and \code{end} S3 generics.

    \item \code{\link[methods]{showMethods}} for displaying a summary of the
          methods defined for a given generic function.

    \item \code{\link[methods]{selectMethod}} for getting the definition of
          a specific method.

    \item \link[IRanges]{start,IRanges-method} in the \pkg{IRanges}
          package for examples of specific \code{start}, \code{end}, and
          \code{width} methods (defined for \link[IRanges]{IRanges} objects).

    \item \link{BiocGenerics} for a summary of all the generics defined
          in the \pkg{BiocGenerics} package.
  }
}

\examples{
## start getter:
start
showMethods("start")

library(IRanges)
showMethods("start")
selectMethod("start", "IRanges")  # start getter for IRanges objects

## start setter:
`start<-`
showMethods("start<-")
selectMethod("start<-", "IRanges")  # start setter for IRanges objects

## end getter:
end
showMethods("end")
selectMethod("end", "IRanges")  # end getter for IRanges objects

## end setter:
`end<-`
showMethods("end<-")
selectMethod("end<-", "IRanges")  # end setter for IRanges objects

## width getter:
width
showMethods("width")
selectMethod("width", "IRanges")  # width getter for IRanges objects

## width setter:
`width<-`
showMethods("width<-")
selectMethod("width<-", "IRanges")  # width setter for IRanges objects
}

\keyword{methods}
