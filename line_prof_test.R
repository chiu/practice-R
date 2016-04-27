# devtools::install_github("hadley/lineprof")

# devtools::install_github("hadley/lineprof")

library(lineprof)
source("profiling-example.R")
l <- lineprof(f())
l