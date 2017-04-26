#' Tidy data frame of Karel Capek's 6 completed, published novels
#'
#' Returns a tidy data frame of Karel Capek's 6 completed, published novels with
#' two columns: \code{text}, which contains the text of the novels,
#' and \code{book}, which contains the titles of
#' the novels as a factor in order of publication.
#'
#' @return A data frame with two columns: \code{text} and \code{book}
#'
#' @name capek_books
#'
#' @examples
#'
#' library(dplyr)
#'
#' capek_books() %>%
#'      group_by(book) %>%
#'      summarise(total_lines = n())
#'
#' @export

capek_books <- function(){
    books <- list(
    "Tovarna na absolutno" = tovarna_na_absolutno,
    "Krakatit" = krakatit,
    "Hordubal" = hordubal,
    "Povetron" = povetron,
    "Obycejny zivot" = obycejny_zivot,
    "Valka s mloky" = valka_s_mloky
  )
  ret <- data.frame(text = unlist(books, use.names = FALSE), stringsAsFactors = FALSE)
  ret$book <- factor(rep(names(books), sapply(books, length)))
  ret$book <- factor(ret$book, levels = unique(ret$book))
  structure(ret, class = c("tbl_df", "tbl", "data.frame"))
}
