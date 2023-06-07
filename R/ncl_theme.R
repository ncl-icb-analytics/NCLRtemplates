#' Creates the NCL ICB Theme for ggplot
#'
#' Creates a base theme for ggplot objects. By default this uses a font that
#' requires the \link[extrafont]{extrafont} package to be installed.
#'
#' @param base_family The font to use in this theme
#'
#' @export
#'
#' @import ggplot2
#'
#' @examples
#' \dontrun{
#' library(ggplot2)
#' library(NCLtemplates)
#' ggplot(iris, aes(Sepal.Width, Sepal.Length, colour = Species)) +
#'   geom_point() +
#'   theme_nclicb()
#' }
theme_nclicb <- function(base_family = "opensans"){
  theme_classic(base_family = base_family) +
    theme(
      axis.title = element_text(family=base_family),
      panel.background = element_blank(),
      panel.grid = element_blank(),
      axis.line = element_line(colour = ncl_theme_cols("icb_darkgrey_100")),
      strip.background = element_rect(fill = ncl_theme_cols("icb_midgrey_40"))
    )
}


#' Creates the NCL ICS Theme for ggplot
#'
#' Creates a base theme for ggplot objects. By default this uses a font that
#' requires the \link[extrafont]{extrafont} package to be installed.
#'
#' @param base_family The font to use in this theme
#'
#' @export
#'
#' @import ggplot2
#'
#' @examples
#' \dontrun{
#' library(ggplot2)
#' library(NCLtemplates)
#' ggplot(iris, aes(Sepal.Width, Sepal.Length, colour = Species)) +
#'   geom_point() +
#'   theme_nclics()
#' }
theme_nclics <- function(base_family = "opensans"){
  theme_classic(base_family = base_family) +
    theme(
      axis.title = element_text(family=base_family),
      panel.background = element_blank(),
      panel.grid = element_blank(),
      axis.line = element_line(colour = ncl_theme_cols("icb_darkgrey_100")),
      strip.background = element_rect(fill = ncl_theme_cols("icb_midgrey_40"))
    )
}
