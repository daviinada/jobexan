library(shiny)
library(shinydashboard)
library(pool)
library(dplyr)
library(RMySQL)

server <- function(input, output) {
    
    output$texto1 <- renderText({'Hello 1!!'})
    output$texto2 <- renderText({'Hello 2!!'})
    output$texto3 <- renderText({'Hello 3!!'})
    output$texto4 <- renderText({'Hello 4!!'})
    output$texto5 <- renderText({'Hello 5!!'})
    
    # Criando conexao com DB ----

    voxus_db <- dbPool(
        RMySQL::MySQL(), 
        dbname = "voxus",
        host = "127.0.0.1",
        username = "root",
        password = '91689416'
    )
    
    # List tables
    lista_tabela <- dbListTables(voxus_db)
    tabelas <- as.character(lista_tabela)
    
    # Criando interface de selecao de tabela do db
    
    lista_ui <- list()
    lista_ui[tabelas] <- tabelas 
    output$tabList <- renderUI({
        selectInput("db_tables", "Choose a table from DB:",
                    lista_ui
        )
    })
    
    # List content
    table <- voxus_db %>% tbl("jobs")
    table %>% collect() 
    
    # Insere dados ----
    
    # Le dados ----
    
    # Remove dados ----
    
    # Atualiza dados
    
    
}

    
