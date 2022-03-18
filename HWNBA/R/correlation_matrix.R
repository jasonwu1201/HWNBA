#' Return a correlation matrix
#'
#' This function allows you obtain a correlation martix of all numeric variables in the NBA dataset for a given year
#' @param year The year that you are interested in.
#' @keywords NBA, year
#' @export
#' @examples
#' correlation_matrix(2000)



correlation_matrix <- function(year, data = NBA) {
  NBA_numeric <- purrr::keep(NBA, purrr::is_numeric)
  NBA_complete <- stats::na.omit(NBA_numeric)
  return(stats::cor(NBA_complete))
}
