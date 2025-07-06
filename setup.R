install.packages("pak")

library(pak)
pkg_install(c(
  "duckdb", "omopgenerics", "CDMConnector", "CodelistGenerator", 
  "CohortCharacteristics", "CohortConstructor",
  "TreatmentPatterns", "visOmopResults", "gt", 
  "reactable", "ggplot2", "plotly", "officer", "flextable", "DiagrammeR",
  "DiagrammeRsvg", "grid", "png", "rsvg", "lubridate", "usethis", "here",
  "CirceR", "SqlRender", "rJava"
))

library(here)
library(CDMConnector)
library(duckdb)
library(cli)
Sys.setenv("EUNOMIA_DATA_FOLDER" = here("eunomia"))
datasetName <- "GiBleed"
requireEunomia(datasetName = datasetName)
con <- dbConnect(drv = duckdb(dbdir = eunomiaDir(datasetName = datasetName)))
cdm <- cdmFromCon(con = con, cdmSchema = "main", writeSchema = "main", cdmName = datasetName)
cdm
cdmDisconnect(cdm = cdm)
cli_alert_success("You are all set 🎉")
