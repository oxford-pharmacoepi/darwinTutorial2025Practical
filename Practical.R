# load required libraries
library(duckdb)
library(CDMConnector)
library(CodelistGenerator)
library(CohortCharacteristics)

# create the cdm object
datasetName <- "GiBleed"
requireEunomia(datasetName = datasetName)
con <- dbConnect(drv = duckdb(dbdir = eunomiaDir(datasetName = datasetName)))
cdm <- cdmFromCon(con = con, cdmSchema = "main", writeSchema = "main", cdmName = datasetName)

# create a codelist








# cdm disconnect
cdmDisconnect(cdm = cdm)
