library(TreatmentPatterns)
library(CDMConnector)
library(dplyr)
library(DBI)
library(duckdb)
library(stringr)

datasetName <- "GiBleed"
requireEunomia(datasetName = datasetName)
con <- dbConnect(drv = duckdb(dbdir = eunomiaDir(datasetName = datasetName)))
cdm <- cdmFromCon(con = con, cdmSchema = "main", writeSchema = "main", cdmName = datasetName)
cdm
