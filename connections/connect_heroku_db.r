library(DBI)

#db credentials
db <- "dan6d5hlj7qhbt"
host_db <- "ec2-44-193-178-122.compute-1.amazonaws.com"
db_port <- "5432"
db_user <- "srafmmeanfvwne"
db_password <- "0b5a000e78bb1b1e79708d79a5163f8fd9145157b7288b0164f389c65480710c" # nolint

con <- dbConnect(RPostgres::Postgres(), 
    dbname = db,
    host=host_db, 
    port=db_port, 
    user=db_user, 
    password=db_password)

# dbListTables(con)
# dbListFields(con, "test")

# dbSendQuery(con, "INSERT INTO Employees VALUES(3,'Aakash')")

#dbSendQuery(con, "CREATE TABLE Money(Id INTEGER PRIMARY KEY, Name VARCHAR(20))")

# df <- dbGetQuery(con, "SELECT * FROM Employees")

# df

#dbSendQuery(con, "CREATE TABLE Employees(Id INTEGER PRIMARY KEY, Name VARCHAR(20))")

#dbListTables(con)

# rs <- dbSendQuery(con, "select id from employees")

# con <- DBI::dbConnect(RPostgreSQL::PostgreSQL(),
#  dbname <- db,
#  user    <- db_user,
#  password    <- db_password,
#  host <- host_db,
# port <- 5432) ## works fine

# sql_command <- "CREATE TABLE cartable
# (
#   carname character varying NOT NULL,
#   mpg numeric(3,1),
#   cyl numeric(1,0),
#   disp numeric(4,1),  
#   hp numeric(3,0),
#   drat numeric(3,2),
#   wt numeric(4,3),
#   qsec numeric(4,2),
#   vs numeric(1,0),
#   am numeric(1,0),
#   gear numeric(1,0),
#   carb numeric(1,0),
#   CONSTRAINT cartable_pkey PRIMARY KEY (carname)
# )
# WITH (
#   OIDS=FALSE
# );

# "
# sql_command_2 <- "ALTER TABLE cartable
#   OWNER TO openpg;
# COMMENT ON COLUMN cartable.disp IS '
# ';"
# sends the command and creates the table
# dbGetQuery(con, sql_command)
# dbGetQuery(con, sql_command2)
