library(shinydashboard)

dashboardPage(
    dashboardHeader(title = "Voxus CRUD"),
    dashboardSidebar(
        sidebarMenu(
            menuItem("Task DB status", tabName = "databank", icon = icon("database")),
            menuItem("Data jobs", tabName = "jobs", icon = icon("address-card"),
                     menuSubItem("Access DB", tabName = "access"),
                     menuSubItem("Update status", tabName = "update"),
                     menuSubItem("Delete item", tabName = "delete")
                     
                ),
            menuSubItem("Consult info", tabName = "consult", icon = icon("bar-chart"))
            
        )
        
    ),
    dashboardBody(
        
    tabItems(
            tabItem(tabName = "databank",
               textOutput('texto1'),
               uiOutput('tabList')
            ),
            tabItem(tabName = "access",
                    textOutput('texto2')
            ),
            tabItem(tabName = "update",
                    textOutput('texto3')
            ),
            tabItem(tabName = "delete",
                    textOutput('texto4')
            ),
            tabItem(tabName = "consult",
                    textOutput('texto5')
            )
    )
)
)
