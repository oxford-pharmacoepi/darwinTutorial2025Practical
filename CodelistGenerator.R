library(DBI)
library(dplyr)
library(duckdb)
library(omopgenerics)
library(CDMConnector)
library(here)
library(CodelistGenerator)
library(CohortConstructor)

con <- dbConnect(duckdb(), 
                 dbdir = eunomiaDir())
cdm <- cdmFromCon(con = con, 
                  cdmSchema = "main", 
                  writeSchema = "main", 
                  cdmName = "Eunomia")
cdm

