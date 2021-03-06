% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/drive_rm.R
\name{drive_rm}
\alias{drive_rm}
\title{Delete files from Drive}
\usage{
drive_rm(..., verbose = TRUE)
}
\arguments{
\item{...}{One or more Drive files, specified in any valid way, i.e. as a
\code{\link{dribble}}, by name or path, or by file id or URL marked with \code{\link[=as_id]{as_id()}}. Or
any combination thereof. Elements are processed with \code{\link[=as_dribble]{as_dribble()}} and
row-bound prior to deletion.}

\item{verbose}{Logical, indicating whether to print informative messages
(default \code{TRUE}).}
}
\value{
Logical vector, indicating whether the delete succeeded.
}
\description{
Caution: this will permanently delete your files! For a safer, reversible
option, see \code{\link[=drive_trash]{drive_trash()}}.
}
\examples{
\dontrun{
## Create something to remove
drive_upload(drive_example("chicken.txt"), name = "chicken-rm.txt")

## Remove it by name
drive_rm("chicken-rm.txt")

## Create several things to remove
x1 <- drive_upload(drive_example("chicken.txt"), name = "chicken-abc.txt")
drive_upload(drive_example("chicken.txt"), name = "chicken-def.txt")
x2 <- drive_upload(drive_example("chicken.txt"), name = "chicken-ghi.txt")

## Remove them all at once, specified in different ways
drive_rm(x1, "chicken-def.txt", as_id(x2))
}
}
\seealso{
Wraps the \code{files.delete} endpoint:
\itemize{
\item \url{https://developers.google.com/drive/v3/reference/files/delete}
}
}
