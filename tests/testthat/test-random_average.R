test_that("magicwand_df returns the correct output for different inputs", {
  # Test case 1: Single argument functionality - numerical vector
  vectorx <- c(1, 2, 3, 4, 5)
  expected_output <- data.frame(
    Names = c("Minimum", "Lower Hinge", "Q1", "Median", "Q3", "Upper Hinge", "Maximum"),
    Values = c(1, 2, 2, 3, 4, 4, 5)
  )
  expect_equal(magicwand_df(vectorx), expected_output)

  # Test case 2: Single argument functionality - character vector
  vectorx <- c("apple", "banana", "apple", "orange")
  expected_output <- data.frame(
    Values = c("apple", "banana", "orange"),
    Frequencies = c(2, 1, 1)
  )
  expect_equal(magicwand_df(vectorx), expected_output)

  # Test case 3: Two-argument functionality - numerical vectors
  vectorx <- c(1, 2, 3)
  vectory <- c(4, 5, 6)
  expected_output <- data.frame(Coefficient = 1)
  expect_equal(magicwand_df(vectorx, vectory), expected_output)

  # Test case 4: Two-argument functionality - numerical and character vectors
  vectorx <- c(1, 2, 1)
  vectory <- c("apple", "banana", "apple")
  expected_output <- data.frame(Levels = c("apple", "banana"), Mean = c(1, 2))
  expect_equal(magicwand_df(vectorx, vectory), expected_output)

  # Test case 5: Two-argument functionality - character vectors
  vectorx <- c("apple", "banana", "apple")
  vectory <- c("red", "yellow", "red")
  expected_output <- data.frame(
    "red" = c(2, 0),
    "yellow" = c(0, 1)
  )
  rownames(expected_output) <- c("apple", "banana")
  expect_equal(magicwand_df(vectorx, vectory), expected_output)

  # Test case 6: Failure case - Unequal vector lengths
  vectorx <- c(1, 2, 3)
  vectory <- c("red", "yellow")
  expected_output <- "Vectors have different lengths...please try again..."
  expect_equal((magicwand_df(vectorx, vectory)), expected_output)

  # Test case 7: Failure case - Invalid input type
  vectorx <- list(1, 2, 3)
  expected_output <- "Invalid inputs...please refer to the documentation at ?magicwand_df..."
  expect_equal(magicwand_df(vectorx), expected_output)

  # Test case 8: Failure case - Invalid arguments
  vectorx <- NULL
  vectory <- NULL
  expected_output <- "Invalid Argument...please refer to the documentation at ?magicwand_df..."
  expect_equal(magicwand_df(vectorx, vectory), expected_output)

})
