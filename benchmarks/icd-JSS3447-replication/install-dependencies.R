for (p in c(
  "utf8",
  "bench",
  "backports",
  "checkmate",
  "magrittr",
  "testthat",
  "knitr",
  "profmem",
  "R.cache",
  "Rcpp",
  "RcppEigen",
  "tidyr",
  "comorbidity",
  "medicalrisk",
  "icd.data"
)) {
  if (!require(p, character.only = TRUE,
               quietly = TRUE, warn.conflicts = FALSE))
    install.packages(p, character.only = TRUE)
  library(p, character.only = TRUE,
          quietly = TRUE, warn.conflicts = FALSE)
}

if (!require("icd")) {
  message("icd not yet installed, so installing from CRAN")
  install.packages("icd")
}