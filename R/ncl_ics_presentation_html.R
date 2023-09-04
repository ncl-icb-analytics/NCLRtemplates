#' Convert to an NCL ICS xaringan presentation
#'
#' Format for converting from R Markdown to an NCL branded xaringan
#' presentation.
#'
#' @param ... additional arguments to pass to [xaringan::moon_reader()]
#'
#' @return R Markdown output format to pass to \code{\link{render}}
#'
#' @importFrom xaringan moon_reader
#' @import knitr
#'
#' @examples
#' \dontrun{
#' library(rmarkdown)
#'
#' # simple invocation
#' render("input.Rmd", ncl_presentation())
#' }
#' @export
ncl_presentation <- function(...) {
  
  # get the locations of resource files located within the package
  css <- system.file("rmarkdown/templates/ncl-ics-presentation",
                     "ncl_xaringan.css",
                     package = "NCLRtemplates"
  )
  
  # call the base word_document function
  xaringan::moon_reader(
    css = c("default", css),
    self_contained = TRUE,
    nature = list(
      ratio = "16:9",
      highlightLines = TRUE,
      countIncrementalSlides = FALSE,
      highlightStyle = "github"
    ),
    ...
  )
}