# load libraries
library(duckdb)
library(CDMConnector)
library(dplyr)
library(here)
library(CodelistGenerator)
library(CohortConstructor)
library(CohortCharacteristics)
library(PatientProfiles)
library(gt)
library(ggplot2)
library(dplyr, warn.conflicts = FALSE)
library(visOmopResults)
library(plotly)

# create cdm reference
datasetName <- "GiBleed"
requireEunomia(datasetName = datasetName)
con <- dbConnect(drv = duckdb(dbdir = eunomiaDir(datasetName = datasetName)))
cdm <- cdmFromCon(con = con, 
                  cdmSchema = "main", 
                  writeSchema = "main", 
                  cdmName = datasetName)
cdm