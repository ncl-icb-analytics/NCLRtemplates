#' @rdname ncl_theme_gradient_colour_scales
#' @name ncl_theme_gradient_colour_scales
#' @title NCL Theme Gradient colour Scale
#'
#' @description
#' Generates a two colour gradient (low-high)
#'
#' @param palette The name of palette to use
#' @param discrete Optional: boolean to indicate that this scale is a discrete
#'    scale. Defaults to TRUE
#' @param reverse Optional: boolean to reverse the direction of the scale.
#'    Defaults to FALSE
#' @param ... additional arguments passed to the ggplot functions
#'
#' @return a scale object to be used with a ggplot object
#'
NULL

#' @export
#' @importFrom ggplot2 discrete_scale scale_color_gradientn
#' @rdname ncl_theme_gradient_colour_scales
scale_colour_ncl <- function(palette =
                               c("ics",
                                 "icb",
                                 "icb_darkblue",
                                 "icb_brightblue",
                                 "icb_aquablue",
                                 "icb_lightblue",
                                 "icb_nhsblue",
                                 "icb_darkgrey",
                                 "icb_midgrey",
                                 "ics_purple",
                                 "ics_pink",
                                 "ics_limegreen",
                                 "ics_brightgreen",
                                 "ics_teal"
                                 ),
                            discrete = TRUE,
                            reverse = FALSE, ...){
  palette <- match.arg(palette)

  pal <- ncl_theme_pal(palette = palette, reverse = reverse)

  if (discrete) {
    discrete_scale("colour", paste0("ncl_theme_", palette), palette = pal, ...)
  } else {
    scale_color_gradientn(colours = pal(256), ...)
  }
}
#' @export
#' @rdname ncl_theme_gradient_colour_scales
scale_color_ncl <- scale_colour_ncl

#' @export
#' @importFrom ggplot2 discrete_scale scale_fill_gradient
#' @rdname ncl_theme_gradient_colour_scales
scale_fill_ncl <- function(palette =
                             c("ics",
                               "icb",
                               "icb_darkblue",
                               "icb_brightblue",
                               "icb_aquablue",
                               "icb_lightblue",
                               "icb_nhsblue",
                               "icb_darkgrey",
                               "icb_midgrey",
                               "ics_purple",
                               "ics_pink",
                               "ics_limegreen",
                               "ics_brightgreen",
                               "ics_teal"
                             ),
                           discrete = TRUE,
                           reverse = FALSE, ...){
  palette <- match.arg(palette)

  pal <- ncl_theme_pal(palette = palette, reverse = reverse)

  if (discrete) {
    discrete_scale("fill", paste0("ncl_theme_", palette), palette = pal, ...)
  } else {
    scale_fill_gradientn(colours = pal(256), ...)
  }
}
