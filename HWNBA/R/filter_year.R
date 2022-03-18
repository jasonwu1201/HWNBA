#' Filter NBA dataset by year
#'
#' This function allows you to filter the NBA dataset by year.
#' @param year The year which you are interested in. No default
#' @keywords NBA, year
#' @export
#' @examples
#' filter_year(2000)

filter_year <- function(year, data = NBA) {
  return(dplyr::filter(NBA, Year == year))
}
