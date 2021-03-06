
#' Create Table of Journals Surveyed
#' @param rrpp `data.frame` of article evaluations
#' @return \pkg{pander} table of journals surveyed
#' @export table_of_journals
#'
#' @examples
#' \donttest{
#' rrpp <- gsheet::gsheet2tbl(
#'"https://docs.google.com/spreadsheets/d/19gXobV4oPZeWZiQJAPNIrmqpfGQtpapXWcSxaXRw1-M/edit#gid=1699540381"
#')
#' table_of_journals(rrpp)
#' }
#'
table_of_journals <- function(rrpp) {

rrpp_journals <- as.data.frame(table(rrpp[, 1]))
names(rrpp_journals) <- c("Journal", "Count")
return(pander::pander(rrpp_journals))
}
