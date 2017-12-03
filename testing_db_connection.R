# Libraries
    library(pool)
    library(dplyr)
    library(RMySQL)

# Making conection
voxus_db <- dbPool(
    RMySQL::MySQL(), 
    dbname = "voxus",
    host = "127.0.0.1",
    username = "root",
    password = '91689416'
)

# List tables
dbListTables(voxus_db)

# List content
table <- voxus_db %>% tbl("jobs")
table %>% collect() #extrai dado e converte para df
# Disconect
pool::poolClose(voxus_db)
