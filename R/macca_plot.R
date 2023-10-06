#' Generate an interactive plot of inflation rates of all countries from 2011-2020
#'
#' This function generates an interactive plot showing the inflation rates over time for different countries.
#'
#' @name macca_inflation_plot
#' @param inflachoice A character string indicating the type of inflation to plot. It can be "usd",
#'                    "us dollar", "us", or "local price". If it matches any of these options (case-insensitive),
#'                    the plot will show the inflation rates based on the Dollar price, otherwise it will show
#'                    the inflation rates based on the Local price.
#'
#' @return An interactive plotly object displaying the inflation rates over time.
#'
#' @import dplyr
#' @import forcats
#' @import ggplot2
#' @importFrom plotly ggplotly
#' @importFrom stats median
#'
#' @examples
#' macca_inflation_plot("usd")
#' macca_inflation_plot("Local Price")
#'
#' @export
#'
#'

macca_inflation_plot <- function(inflachoice) {

  data <- maccaindex::macca_raw

  data <- data %>%
    select(1:12, -iso_a3)

  data_test <- data %>%
    group_by(name) %>%
    count(name) %>%
    filter(n == 33)

  if (grepl("usd|us dollar|us", inflachoice, ignore.case = TRUE)) {
    inflachoice <- "Dollar price"
  } else {
    inflachoice <- "Local price"
  }

  dt <- data %>%
    inner_join(data_test, by = "name") %>%
    select(name, price = ifelse(inflachoice == "Dollar price", "dollar_price", "local_price")) %>%
    mutate(name = fct_reorder(name, price, function (x) last(x)/first(x))) %>%
    group_by(name) %>%
    summarise(Inflation = last(price)/first(price))

  if (inflachoice == "Dollar price") {

    plot <- ggplotly(
      dt %>%
        ggplot(aes(y = Inflation, x = name)) +
        geom_hline(aes(yintercept = median(Inflation)), col = "#c97ef6") +
        geom_segment(aes(x = name, y = 0.9, xend = name, yend = Inflation)) +
        geom_point(size=2, color="aquamarine4") +
        geom_text(aes(label = paste0(round(Inflation, 1), "X")), position = position_nudge(y = 0.03)) +
        annotate("text", x = 3, y = median(dt$Inflation) + 0.5, label = paste0("Median: ", round(median(dt$Inflation), 1)), hjust = -0.1, col = "#c97ef6") +
        coord_flip() +
        scale_y_log10(breaks = c(1, 3, 10, 30, 100)) +
        theme_bw(base_size = 16) +
        theme(legend.position = "none", text = element_text(size = 9)) +
        labs(x = "", y = "Inflation rate over time",
             title = paste0("Big Mac Price changes from 2000-2020 (", inflachoice, ")"))
    )} else {
      plot <- ggplotly(
        dt %>%
          ggplot(aes(y = Inflation, x = name)) +
          geom_hline(aes(yintercept = median(Inflation)), col = "#c97ef6") +
          geom_segment(aes(x = name, y = 0.9, xend = name, yend = Inflation)) +
          geom_point(size=2, color="aquamarine4") +
          geom_text(aes(label = paste0(round(Inflation, 1), "X")), position = position_nudge(y = 0.1)) +
          annotate("text", x = 3, y = median(dt$Inflation) + 0.5, label = paste0("Median: ", round(median(dt$Inflation), 1)), hjust = -0.1, col = "#c97ef6") +
          coord_flip() +
          scale_y_log10(breaks = c(1, 3, 10, 30, 100)) +
          theme_bw(base_size = 16) +
          theme(legend.position = "none", text = element_text(size = 9)) +
          labs(x = "", y = "Inflation rate over time",
               title = paste0("Big Mac Price changes from 2000-2020 (", inflachoice, ")"))
      )
    }

  return(plot)

}

