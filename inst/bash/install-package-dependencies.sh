#! /usr/bin/env Rscript
options(repos = structure(c(CRAN = "http://cran.uni-muenster.de/")))
packages <- c("Amelia", "jsonlite", "urca", "vars", "testthat", "roxygen2", "Rcpp", "covr")
new.packages <- packages[!(packages %in% installed.packages()[, "Package"])]
if (length(new.packages))
  install.packages(new.packages)
update.packages(lib.loc = Sys.getenv("R_LIBS_USER"), ask = FALSE)
