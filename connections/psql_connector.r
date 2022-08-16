library(DBI)

db <- "vrpdatadef" #provide the name of your db

host_db <- "10.20.1.70" #i.e. # i.e. 'ec2-54-83-201-96.compute-1.amazonaws.com'  

db_port <- "5432"  # or any other port specified by the DBA

db_user <- "postgres"

db_password <- "JB$|4~K?dhkxi$"

con <- dbConnect(RPostgres::Postgres(), dbname = db, host=host_db, port=db_port, user=db_user, password=db_password)

a <- dbListTables(con)
b <- dbGetQuery(con, "Select * from money")