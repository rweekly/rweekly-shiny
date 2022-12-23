#' draft_builder UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd
#'
#' @importFrom shiny NS tagList
mod_draft_builder_ui <- function(id) {
  ns <- NS(id)
  tagList(
    h1("Hello {brochure}!")
  )
}

#' draft_builder Server Functions
#'
#' @noRd
mod_draft_builder_server <- function(id) {
  moduleServer(id, function(input, output, session) {
    ns <- session$ns
  })
}

#' Page Functions
#'
#' @noRd
#' @importFrom brochure page
draft_builder <- function(id = "draft_builder", href = "/draft_builder") {
  page(
    href = href,
    ui = mod_draft_builder_ui(id = id),
    server = function(input, output, session) {
      mod_draft_builder_server(id = id)
    }
  )
}

# Add this to the brochureApp call in R/draft_builderrun_app.R
# draft_builder()
