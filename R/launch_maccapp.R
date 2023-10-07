#' maccapp
#'
#' @title Run the Big Mac Shiny App
#'
#' @description This function launches the Big Mac Shiny app.
#' @return A Shiny App Interface
#'
#' @examples
#' \dontrun{
#' maccapp()
#' }
#'
#' @export

maccapp <- function() {
  app_dir <- system.file("maccapp", package = "maccaindex")
  if (app_dir == "") {
    stop("Could not find `maccapp` directory. Try re-installing `maccaindex`.", call. = FALSE)
  }

  shiny::runApp(app_dir, display.mode = "normal")
}
