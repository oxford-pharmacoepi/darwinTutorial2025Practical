# load required libraries
library(duckdb)
library(CDMConnector)
library(CodelistGenerator)
library(CohortCharacteristics)
library(here)

# you can write this in your .Renviron file to make it permanent
Sys.setenv("EUNOMIA_DATA_FOLDER"=here("eunomia"))

# create the cdm object
datasetName <- "GiBleed"
requireEunomia(datasetName = datasetName)
con <- dbConnect(drv = duckdb(dbdir = eunomiaDir(datasetName = datasetName)))
cdm <- cdmFromCon(con = con, cdmSchema = "main", writeSchema = "main", cdmName = datasetName)

# create a codelist








# cdm disconnect
cdmDisconnect(cdm = cdm)
