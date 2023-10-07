#' macca_raw
#' @title The Macca Index
#'
#' @description This is the data behind *The Economist*'s Big Mac Index, which consists
#' of Big Mac prices from around the world spanning from 2011-2020.
#'
#' @docType data
#'
#' @format A dataframe with 19 variables and 1386 observations
#' \describe{
#'   \item{date}{Date of observation.}
#'   \item{iso_a3}{Three-character [ISO 3166-1 country code](https://www.iso.org/iso-3166-country-codes.html).}
#'   \item{currency_code}{Three-character [ISO 4217 currency code](https://www.iso.org/iso-4217-currency-codes.html).}
#'   \item{name}{Country name.}
#'   \item{local_price}{Price of a Big Mac in the local currency. Source: McDonald's; The Economist.}
#'   \item{dollar_ex}{Local currency units per dollar. Source: Reuters.}
#'   \item{dollar_price}{Price of a Big Mac in dollars.}
#'   \item{USD_raw}{Raw index, relative to the US dollar.}
#'   \item{EUR_raw}{Raw index, relative to the Euro.}
#'   \item{GBP_raw}{Raw index, relative to the British pound.}
#'   \item{JPY_raw}{Raw index, relative to the Japanese yen.}
#'   \item{CNY_raw}{Raw index, relative to the Chinese yuan.}
#'   \item{GDP_dollar}{GDP per person, in dollars. Source: IMF.}
#'   \item{adj_price}{GDP-adjusted price of a Big Mac, in dollars.}
#'   \item{USD_adjusted}{Adjusted index, relative to the US dollar.}
#'   \item{EUR_adjusted}{Adjusted index, relative to the Euro.}
#'   \item{GBP_adjusted}{Adjusted index, relative to the British pound.}
#'   \item{JPY_adjusted}{Adjusted index, relative to the Japanese yen.}
#'   \item{CNY_adjusted}{Adjusted index, relative to the Chinese yuan.}
#' }
#'
#' @author \href{https://github.com/rfordatascience/tidytuesday/blob/master/data/2020/2020-12-22/big-mac.csv}{TidyTuesdayR Github Repo}
#' @keywords data
"macca_raw"
