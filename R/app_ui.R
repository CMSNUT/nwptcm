#' The application User-Interface
#'
#' @param request Internal parameter for `{shiny}`.
#'     DO NOT REMOVE.
#' @import shiny
#' @import shinydashboard
#' @noRd
app_ui <- function(request) {
  tagList(
    # Leave this function for adding external resources
    golem_add_external_resources(),
    # Your application UI logic
    getUI()
  ) # END tagList
}

#' Add external Resources to the Application
#'
#' This function is internally used to add external
#' resources inside the Shiny application.
#'
#' @import shiny
#' @importFrom golem add_resource_path activate_js favicon bundle_resources
#' @noRd
golem_add_external_resources <- function() {
  add_resource_path(
    "www",
    app_sys("app/www")
  )

  tags$head(
    favicon(),
    bundle_resources(
      path = app_sys("app/www"),
      app_title = "nwptcm"
    )
    # Add here other external resources
    # for example, you can add shinyalert::useShinyalert()
  )
}

#' Add external Resources to the Application
#'
#' This function is internally used to add external
#' resources inside the Shiny application.
#'
#' @import shiny
#' @import shinydashboard
#' @noRd
getUI <- function() {
  dashboardPage(
    title = "NWPTCM: Traditional Chinese Medicine Network Pharmacology Platform",
    skin = "green",

    dashboardHeader(title="NWPTCM"),
    dashboardSidebar(
      sidebarMenu(
        id = "tabs",
        menuItem(
          text = '关于NWPTCM',
          icon = shiny::icon('house'),
          tabName = "about",
          selected=TRUE
        ), # END 关于NWPTCM

        # 数据管理 ----
        menuItem(
          text = '数据管理',
          icon = shiny::icon('house'),
          menuSubItem(
            text = '中药方剂',
            icon = shiny::icon('th'),
            tabName = "formula_herb"
          ), # END 中药方剂

          menuSubItem(
            text = '中药成分',
            icon = shiny::icon('th'),
            tabName = "herb_ingredients"
          ), # END 中药成分

          menuSubItem(
            text = '成分靶点',
            icon = shiny::icon('th'),
            tabName = "ingredients_targets"
          ), # END 成分靶点

          menuSubItem(
            text = '成分通路',
            icon = shiny::icon('th'),
            tabName = "ingredients_pathway"
          ), # END 成分通路

          menuSubItem(
            text = '疾病处方',
            icon = shiny::icon('th'),
            tabName = "disease_formula"
          ), # END 疾病处方

          menuSubItem(
            text = '疾病靶点',
            icon = shiny::icon('th'),
            tabName = "disease_targets"
          ), # END 疾病靶点

          menuSubItem(
            text = '疾病通路',
            icon = shiny::icon('th'),
            tabName = "disease_pathway"
          ), # END 疾病通路

          menuSubItem(
            text = '研究文献',
            icon = shiny::icon('th'),
            tabName = "ref"
          ) # END 研究文献

        ), # END 数据管理

        # 调控网络 ----
        menuItem(
          text = '调控网络',
          icon = shiny::icon('th'),

          menuSubItem(
            text = '靶点交集',
            icon = shiny::icon('th'),
            tabName = "common_targets"
          ), # END 靶点交集

          menuSubItem(
            text = 'TCM调控网络',
            icon = shiny::icon('th'),
            tabName = "nwp"
          ), # END 调控网络

          menuSubItem(
            text = '蛋白互作网络',
            icon = shiny::icon('th'),
            tabName = "ppi"
          ) # END 蛋白互作网络
        ), # END 调控网络

        # 富集分析 ----
        menuItem(
          text = '富集分析',
          icon = shiny::icon('th'),

          menuSubItem(
            text = 'GO分析',
            icon = shiny::icon('th'),
            tabName = "go"
          ), # END GO分析

          menuSubItem(
            text = 'KEEG分析',
            icon = shiny::icon('th'),
            tabName = "kegg"
          ) # END KEGG分析

        ) # END 富集分析


      ) # END siderbarmenu
    ),
    dashboardBody(
      tabItems(
        tabItem(
          tabName = 'about',
          h3('NWPTCM: Traditional Chinese Medicine Network Pharmacology Platform')
            # shinydashboard::box()
        ), # END 关于NWPTCM

        tabItem(
          tabName = 'formula_herb',
          mod_formula_herb_ui("formula_herb")
          # shinydashboard::box()
        ), # END 关于NWPTCM

        tabItem(
          tabName = 'herb_ingredients',
          h3('NWPTCM: Traditional Chinese Medicine Network Pharmacology Platform')
          # shinydashboard::box()
        ) # END 关于NWPTCM

      )
    )
  )
}
