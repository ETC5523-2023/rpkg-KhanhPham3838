#' Big Mac Index Data Fetcher
#'
#' @description
#' This script is to fetch the big mac index data from Github and save it as an .RDA file in the local machine.
#'
#' @import readr
#' @keywords data, cleaning, visualization

library(readr)

url <- "https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2020/2020-12-22/big-mac.csv"

macca_raw <- read_csv(url)

usethis::use_data(macca_raw, overwrite = TRUE)
