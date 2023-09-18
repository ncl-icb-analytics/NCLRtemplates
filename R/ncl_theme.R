#' Creates the NCL ICB Theme for ggplot
#'
#' Creates a base theme for ggplot objects. By default this uses a font that
#' requires installing, and this is handled in the package load and `ncl_setup` function package to be installed.
#'
#' @param base_family The font to use in this theme
#' 
#' @seealso [ncl_setup()], [show_text_auto()], [font_font_add_google()], [theme_nclics()], [theme()], [theme_classic()]
#'
#' @export
#'
#' @import ggplot2
#'
#' @examples
#' \dontrun{
#' library(ggplot2)
#' library(NCLRtemplates)
#' ggplot(iris, aes(Sepal.Width, Sepal.Length, colour = Species)) +
#'   geom_point() +
#'   theme_nclicb()
#' }
theme_nclicb <- function(base_family = "Mulish"){
  theme_classic(base_family = base_family) +
    theme(
      text = element_text(family=base_family, size=12),
      axis.title = element_text(family=base_family),
      panel.background = element_blank(),
      panel.grid = element_blank(),
      axis.line = element_line(colour = ncl_theme_cols("icb_darkgrey_100")),
      strip.background = element_rect(fill = ncl_theme_cols("icb_midgrey_40")),
      plot.title = element_text(face = "bold", size = 16),
      plot.subtitle = element_text(face = "italic", size = 12)
    )
}


#' Creates the NCL ICS Theme for ggplot
#'
#' Creates a base theme for ggplot objects. By default this uses a font that
#'  requires installing, and this is handled in the package load and `ncl_setup` function package to be installed.
#'
#' @param base_family The font to use in this theme. This defaults to 'Mulish', but you can change it to any font you have installed.
#'
#' @seealso [ncl_setup()], [show_text_auto()], [font_font_add_google()], [theme_nclicb()], [theme()], [theme_classic()]
#'
#' @export
#'
#' @import ggplot2
#'
#' @examples
#' \dontrun{
#' library(ggplot2)
#' library(NCLRtemplates)
#' ggplot(iris, aes(Sepal.Width, Sepal.Length, colour = Species)) +
#'   geom_point() +
#'   theme_nclics()
#' }
theme_nclics <- function(base_family = "Mulish"){
  theme_classic(base_family = base_family) +
    theme(
      text = element_text(family=base_family, size=12),
      axis.title = element_text(family=base_family),
      panel.background = element_blank(),
      panel.grid = element_blank(),
      axis.line = element_line(colour = ncl_theme_cols("icb_darkgrey_100")),
      strip.background = element_rect(fill = ncl_theme_cols("icb_midgrey_40")),
      plot.title = element_text(face = "bold", size = 16),
      plot.subtitle = element_text(face = "italic", size = 12)
    )
}
