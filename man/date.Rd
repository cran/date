\name{is.date}
\alias{is.date}
\title{Date Objects}
\description{
   Tests for objects of class \code{"date"}.
}
\usage{
is.date(x)
as.date(x)
}
\arguments{
    \item{x}{any R object.}
}
\value{
    \code{is.date} returns \code{TRUE} if \code{x} has mode
    \code{"date"}, and \code{FALSE} otherwise.

    Its behavor is unaffected by any attributes of \code{x}; for
    example, \code{x} could be a date array (in contrast to the behavior
    of \code{is.vector}).

    \code{as.date} returns \code{x} if \code{x} is a simple object of
    class \code{"date"}, and otherwise a date vector of the same length
    as \code{x} and with data resulting from coercing the elements of
    \code{x} to class \code{"date"}.  See the manual page for
    \code{as.date()} for details.

    Dates are stored as the number of days since 1/1/1960, and are kept
    in integer format.  (This is the same baseline value as is used by
    SAS).  The numerical methods for dates treat \code{date - date} as a
    numeric, and \code{date +- numeric} as a date.

    Logical operations as well as the numeric functions \code{exp()},
    \code{log()}, and so on are invalid.

    Other methods exist for missing value, \code{as.character()},
    printing, and summarizing. 
}

\seealso{
    \code{\link{date.mdy}},
    \code{\link{mdy.date}},
    \code{\link{date.ddmmmyy}}, 
    \code{\link{as.date}}.
}
