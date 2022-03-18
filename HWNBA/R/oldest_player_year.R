#' Select the oldest NBA player of a year
#'
#' This function allows you know who is the oldest NBA player of a year
#' @param year The year that you are interested in.
#' @keywords NBA, year
#' @export
#' @examples
#' oldest_player_year(2000)


oldest_player_year <- function(year, data = NBA) {
  player_year <- dplyr::filter(NBA, Year == year) %>%
    dplyr::arrange(dplyr::desc(Age))
  return(head(player_year, 1))
}
