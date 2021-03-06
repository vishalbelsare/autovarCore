% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/model_is_stable.r
\name{model_is_stable}
\alias{model_is_stable}
\title{Eigenvalue stability condition checking}
\usage{
model_is_stable(varest)
}
\arguments{
\item{varest}{A \code{varest} model.}
}
\value{
This function returns \code{TRUE} if the model satisfies the Eigenvalue stability condition and \code{FALSE} otherwise.
}
\description{
This function returns whether the given model satisfies the Eigenvalue stability condition. The Eigenvalue stability condition is satisfied when all eigen values lie in the unit circle.
}
\examples{
data_matrix <- matrix(nrow = 40, ncol = 3)
data_matrix[, ] <- runif(ncol(data_matrix) * nrow(data_matrix), 1, nrow(data_matrix))
colnames(data_matrix) <- c('rumination', 'happiness', 'activity')
varest <- autovarCore:::run_var(data_matrix, NULL, 1)
autovarCore:::model_is_stable(varest)
}
