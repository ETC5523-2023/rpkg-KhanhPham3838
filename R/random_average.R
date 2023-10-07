#' magicwand_df
#'
#' @docType methods
#'
#' @title Magic Wand DataFrame
#'
#' @description
#' A function that generates a customized data frame based on the input vectors.
#'
#' @importFrom stats cor quantile xtabs
#' @param vectorx A vector of values (either a numerical, character, factor).
#' @param vectory A vector of values (optional).
#'
#' @return A customized data frame based on the input vectors.
#'   - If \code{vectorx} is a numerical vector of at least 5 values, returns a data frame with two columns:
#'     - Names: the names of the values (Minimum, Lower Hinge, Q1, Median, Q3, Upper Hinge, Maximum)
#'     - Values: the corresponding summary values
#'   - If \code{vectorx} is a character or factor vector, returns a data frame with two columns:
#'     - Values: the unique values in \code{vectorx}
#'     - Frequencies: the frequencies of each value
#'   - If both \code{vectorx} and \code{vectory} are numerical vectors of the same size, returns a data frame with one column:
#'     - Coefficient: the correlation coefficient between \code{vectorx} and \code{vectory}
#'   - If one of \code{vectorx} or \code{vectory} is numerical and the other is a character or factor vector, returns a data frame with two columns:
#'     - Levels: the unique levels in the character/factor vector
#'     - Mean: the mean value of the numerical vector for each level
#'   - If both \code{vectorx} and \code{vectory} are character/factor vectors, returns a data frame representing the cross-tabulation of \code{vectorx} and \code{vectory}
#'
#' @examples
#'
#' # Single argument functionality for numerical vector
#' vectorx <- c(1, 2, 3, 4, 5)
#' result <- magicwand_df(vectorx)
#' print(result)
#'
#' # Single argument functionality for character/factor vector
#' vectorx <- c("apple", "banana", "apple", "orange", "banana", "orange")
#' result <- magicwand_df(vectorx)
#' print(result)
#'
#' # Two-argument functionality for numerical vectors
#' vectorx <- c(1, 2, 3)
#' vectory <- c(4, 5, 6)
#' result <- magicwand_df(vectorx, vectory)
#' print(result)
#'
#' # Two-argument functionality for numerical and character/factor vectors
#' vectorx <- c(1, 2, 1, 2, 1)
#' vectory <- c("apple", "banana", "apple", "banana", "banana")
#' result <- magicwand_df(vectorx, vectory)
#' print(result)
#'
#' # Two-argument functionality for character/factor vectors
#' vectorx <- c("apple", "banana", "apple", "orange", "banana")
#' vectory <- c("red", "yellow", "red", "yellow", "red")
#' result <- magicwand_df(vectorx, vectory)
#' print(result)
#'
#' @export

magicwand_df <- function(vectorx, vectory = NULL) {
  if (!is.null(vectorx) && is.null(vectory)) {
    if (is.numeric(vectorx) && length(vectorx) >= 5) {
      minimum <- min(vectorx)
      Q1 <- quantile(vectorx, probs = 0.25)
      median <- median(vectorx)
      Q3 <- quantile(vectorx, probs = 0.75)
      maximum <- max(vectorx)
      lower_hinge <- median(vectorx[vectorx <= median])
      upper_hinge <- median(vectorx[vectorx >= median])
      summary_df <-
        data.frame(
          Names = c(
            "Minimum",
            "Lower Hinge",
            "Q1",
            "Median",
            "Q3",
            "Upper Hinge",
            "Maximum"
          ),
          Values = c(minimum, lower_hinge, Q1, median, Q3, upper_hinge, maximum)
        )
      return(summary_df)
    } else if (is.character(vectorx) || is.factor(vectorx)) {
      count <- table(vectorx)
      count_df <- data.frame(
        Values = names(count),
        Frequencies = as.numeric(count)
      )
      return(count_df)
    } else {
      return("Invalid inputs...please refer to the documentation at ?magicwand_df...")
    }
  } else if (!is.null(vectorx) && !is.null(vectory)) {
    if (length(vectorx) == length(vectory)) {
      if (is.numeric(vectorx) && is.numeric(vectory)) {
        correlation <- cor(vectorx, vectory)
        format_corr <- data.frame(Coefficient = correlation)
        return(format_corr)
      } else if (is.numeric(vectorx) &&
        (is.character(vectory) || is.factor(vectory))) {
        levels <- unique(vectory)
        mean_values <- tapply(vectorx, vectory, mean)
        mean_df_y_ver <- data.frame(Levels = levels, Mean = mean_values, row.names = NULL)
        return(mean_df_y_ver)
      } else if (is.numeric(vectory) &&
        (is.character(vectorx) || is.factor(vectorx))) {
        levels <- unique(vectorx)
        mean_values <- tapply(vectory, vectorx, mean)
        mean_df_x_ver <- data.frame(Levels = levels, Mean = mean_values, row.names = NULL)
        return(mean_df_x_ver)
      } else if (is.character(vectorx) ||
        is.factor(vectorx) && is.character(vectory) || is.factor(vectory)) {
        cross_table <- xtabs(~ vectorx + vectory)
        cross_table_df <- as.data.frame.matrix(cross_table)
        return(cross_table_df)
      } else {
        return(
          "Invalid data types...please refer to the documentation at ?magicwand_df..."
        )
      }
    } else {
      return("Vectors have different lengths...please try again...")
    }
  } else {
    return("Invalid Argument...please refer to the documentation at ?magicwand_df...")
  }
}
