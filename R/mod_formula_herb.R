#' formula_herb UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd
#'
#' @importFrom shiny NS tagList
#' @importFrom DT DTOutput
mod_formula_herb_ui <- function(id) {
  ns <- NS(id)
  tagList(

    box(
      width = 12,
      title = "中药方剂",
      status = "primary",

      actionButton("chk","查询"),

      DT::DTOutput("fb")
    )
  )
}

#' formula_herb Server Functions
#'
#' @noRd
#'
#' @importFrom DBI dbConnect dbDisconnect dbReadTable
#' @importFrom RSQLite SQLite
#' @importFrom DT renderDT
mod_formula_herb_server <- function(id){
  moduleServer(id, function(input, output, session){
    ns <- session$ns
    df <- reactive({
      input$chk
      con <- DBI::dbConnect(RSQLite::SQLite(), "data/test.db")
      rs <- DBI::dbReadTable(con, "mtcars")
      DBI::dbDisconnect(con)
      rs
    }

    )


    output$fb = DT::renderDT({
      df()
    })

  })
}

## To be copied in the UI
# mod_formula_herb_ui("formula_herb_1")

## To be copied in the server
# mod_formula_herb_server("formula_herb_1")
