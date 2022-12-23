#' polls UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd
#'
#' @importFrom shiny NS tagList
mod_polls_ui <- function(id) {
  ns <- NS(id)
  tagList(
    h1("Hello {brochure}!")
  )
}

#' polls Server Functions
#'
#' @noRd
mod_polls_server <- function(id) {
  moduleServer(id, function(input, output, session) {
    ns <- session$ns
  })
}

#' Page Functions
#'
#' @noRd
#' @importFrom brochure page
polls <- function(id = "polls", href = "/polls") {
  page(
    href = href,
    ui = mod_polls_ui(id = id),
    server = function(input, output, session) {
      mod_polls_server(id = id)
    }
  )
}

# Add this to the brochureApp call in R/pollsrun_app.R
# polls()
