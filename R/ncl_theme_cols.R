#' NCL Theme Colours
#'
#' This function returns the colours that are used in the NCL theme as
#' a named vector of RGB values in hexadecimal form.
#'
#' If no arguments are passed to the function, then all of the colours are
#' returned. If only specific colours are required, then the names of the
#' colours that are required can be passed as strings to the function, and only
#' those colours will be returned.
#'
#' If a "palette" is selected then no arguments should be passed to ...
#'
#' Only one palette can be selected at a time.
#'
#' @param ... individual colours that you wish to get the values of
#' @param palette a name of a palette to select the colours of
#'
#' @return a named vector of RGB colours in hexadecimal form
#' @export
#'
#' @examples
#' # show all of the colours
#' ncl_theme_cols()
#' # or, just show some colours
#' ncl_theme_cols("ics", "icb", "nhsblue")
#' # or, select a single palette
#' ncl_theme_cols(palette = "icb_nhsblue")
ncl_theme_cols <- function(...,
                          palette = c(
                            NA,
                            "ics",
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
                          )){
  # take the ... argument's and convert to a unique vector
  dots <- unique(c(...))
  # verify that the palette argument is valid, i.e. it is in the list of allowed
  # values (from the argument definition)
  palette2 <- match.arg(palette)

  # if a palette has not been selected, then return the selected colours
  if (is.na(palette2)) {
    # if no colour's have been specified, then select all
    if (length(dots) < 1) {
      dots <- names(ncl_theme_colours)
    }
    # immediately return the selected colours
    return(ncl_theme_colours[dots])
  }

  # if we are selecting a palette then we shouldn't be specifying colours to
  # select
  if (length(dots) > 0) {
    stop("cannot specify colours and a palette to use")
  }

  # return the colours that are part of this palette
  colours <- switch(palette,
                    "ics" = c("ics_purple_100", "ics_pink_100", "ics_limegreen_100", "ics_brightgreen_100","ics_teal_100"),
                    "icb" = c("icb_darkblue_100", "icb_brightblue_100", "icb_aquablue_100", "icb_lightblue_100","icb_nhsblue_100"),
                    "icb_darkblue" = c("icb_darkblue_100","icb_darkblue_80", "icb_darkblue_60", "icb_darkblue_40","icb_darkblue_20"),
                    "icb_brightblue" = c("icb_brightblue_100","icb_brightblue_80", "icb_brightblue_60", "icb_brightblue_40","icb_brightblue_20"),
                    "icb_aquablue" = c("icb_aquablue_100","icb_aquablue_80", "icb_aquablue_60", "icb_aquablue_40","icb_aquablue_20"),
                    "icb_lightblue" = c("icb_lightblue_100","icb_lightblue_80", "icb_lightblue_60", "icb_lightblue_40","icb_lightblue_20"),
                    "icb_nhsblue" = c("icb_nhsblue_100","icb_nhsblue_80", "icb_nhsblue_60", "icb_nhsblue_40","icb_nhsblue_20"),
                    "icb_darkgrey" = c("icb_darkgrey_100","icb_darkgrey_80", "icb_darkgrey_60", "icb_darkgrey_40","icb_darkgrey_20"),
                    "icb_midgrey" = c("icb_midgrey_100","icb_midgrey_80", "icb_midgrey_60", "icb_midgrey_40","icb_midgrey_20"),
                    "ics_purple" = c("ics_purple_100","ics_purple_80", "ics_purple_60", "ics_purple_40","ics_purple_20"),
                    "ics_pink" = c("ics_pink_100","ics_pink_80", "ics_pink_60", "ics_pink_40","ics_pink_20"),
                    "ics_limegreen" = c("ics_limegreen_100","ics_limegreen_80", "ics_limegreen_60", "ics_limegreen_40","ics_limegreen_20"),
                    "ics_brightgreen" = c("ics_brightgreen_100","ics_brightgreen_80", "ics_brightgreen_60", "ics_brightgreen_40","ics_brightgreen_20"),
                    "ics_teal" = c("ics_teal_100","ics_teal_80", "ics_teal_60", "ics_teal_40","ics_teal_20")
  )

  # return the colours from the selected palette
  return(ncl_theme_colours[colours])
}
