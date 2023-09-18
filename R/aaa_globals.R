# global variables are defined in this file. the file has been named such that
# it will be executed before any other file
.onLoad <- function(libname, pkgname){
  sysfonts::font_add_google("Open Sans", "Open Sans")
  sysfonts::font_add_google("Mulish", "Mulish")

  showtext::showtext_auto()
}



# NCL ICB Theme Colours Vector
#
# The colours that are used in the NCL Theme. Non-exported (used by
# other functions e.g. ncl_theme_cols)
ncl_theme_colours <- c(

   "icb_darkblue_100" = "#003087",
   "icb_darkblue_80" = "#33599f",
   "icb_darkblue_60" = "#6683b7",
   "icb_darkblue_40" = "#99accf",
   "icb_darkblue_20" = "#ccd6e7",

   "icb_brightblue_100" = "#0072CE",
   "icb_brightblue_80" = "#338ed8",
   "icb_brightblue_60" = "#66aae2",
   "icb_brightblue_40" = "#99c7eb",
   "icb_brightblue_20" = "#cce3f5",

   "icb_aquablue_100" = "#00A9CE",
   "icb_aquablue_80" = "#33bad8",
   "icb_aquablue_60" = "#66cbe2",
   "icb_aquablue_40" = "#99ddeb",
   "icb_aquablue_20" = "#cceef5",

   "icb_lightblue_100" = "#41B6E6",
   "icb_lightblue_80" = "#67c5eb",
   "icb_lightblue_60" = "#8dd3f0",
   "icb_lightblue_40" = "#b3e2f5",
   "icb_lightblue_20" = "#d9f0fa",

   "icb_nhsblue_100" = "#005EB8",
   "icb_nhsblue_80"  = "#337ec6",
   "icb_nhsblue_60"  = "#669ed4",
   "icb_nhsblue_40"  = "#99bfe3",
   "icb_nhsblue_20"  = "#ccdff1",

   "icb_darkgrey_100" = "#425563",
   "icb_darkgrey_80" = "#687782",
   "icb_darkgrey_60" = "#8e99a1",
   "icb_darkgrey_40" = "#b3bbc1",
   "icb_darkgrey_20" = "#d9dde0",

   "icb_midgrey_100" = "#768692",
   "icb_midgrey_80" = "#919ea8",
   "icb_midgrey_60" = "#919ea8",
   "icb_midgrey_40" = "#c8cfd3",
   "icb_midgrey_20" = "#e4e7e9",

   "ics_black80_100" = "#333333",

   "ics_purple_100" = "#6059A3",
   "ics_purple_80" = "#807ab5",
   "ics_purple_60" = "#a09bc8",
   "ics_purple_40" = "#bfbdda",
   "ics_purple_20" = "#dfdeed",

   "ics_pink_100" = "#CA589C",
   "ics_pink_80" = "#d579b0",
   "ics_pink_60" = "#df9bc4",
   "ics_pink_40" = "#eabcd7",
   "ics_pink_20" = "#f4deeb",

   "ics_limegreen_100" = "#C0CA2E",
   "ics_limegreen_80" = "#cdd558",
   "ics_limegreen_60" = "#d9df82",
   "ics_limegreen_40" = "#e6eaab",
   "ics_limegreen_20" = "#f2f4d5",

   "ics_brightgreen_100" = "#7FBE5E",
   "ics_brightgreen_80" = "#99cb7e",
   "ics_brightgreen_60" = "#b2d89e",
   "ics_brightgreen_40" = "#cce5bf",
   "ics_brightgreen_20" = "#e5f2df",

   "ics_teal_100" = "#1B9B9D",
   "ics_teal_80" = "#49afb1",
   "ics_teal_60" = "#76c3c4",
   "ics_teal_40" = "#a4d7d8",
   "ics_teal_20" = "#d1ebeb"


)

# NCL Theme Palettes Vector
#
# The palettes that are used in the NCL Theme. Non-exported (used by
# other functions e.g. ncl_theme_cols)
ncl_theme_palettes <- c(
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
)

# taken from usethis: https://github.com/r-lib/usethis
#' @noRd
#' @import usethis fs
scoped_path_r <- function(scope = c("user", "project"), ..., envvar = NULL) {
  scope <- match.arg(scope)
  
  # Try environment variable in user scopes
  if (scope == "user" && !is.null(envvar)) {
    env <- Sys.getenv(envvar, unset = "")
    if (!identical(env, "")) {
      return(user_path_prep(env))
    }
  }
  
  root <- switch(scope,
                 user = fs::path_home_r(),
                 project = usethis::proj_get()
  )
  path(root, ...)
}

user_path_prep <- function(path) {
  ## usethis uses fs's notion of home directory
  ## this ensures we are consistent about that
  path_expand(path)
}

create_directory <- function(path) {
  if (dir_exists(path)) {
    return(invisible(FALSE))
  } else if (file_exists(path)) {
    ui_stop("{ui_path(path)} exists but is not a directory.")
  }
  
  dir_create(path, recurse = TRUE)
  ui_done("Creating {ui_path(path)}")
  invisible(TRUE)
}

