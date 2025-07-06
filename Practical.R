# load required libraries
library(duckdb)
library(CDMConnector)
library(CodelistGenerator)
library(CohortConstructor)
library(CohortCharacteristics)
library(here)

# you can write this permanently in the .Renviron file, otherwise you need to 
# run this line every time that you restart session.
Sys.setenv("EUNOMIA_DATA_FOLDER" = here("eunomia"))

# create the cdm object
datasetName <- "GiBleed"
con <- dbConnect(drv = duckdb(dbdir = eunomiaDir(datasetName = datasetName)))
cdm <- cdmFromCon(con = con, 
                  cdmSchema = "main", 
                  writeSchema = "main", 
                  cdmName = datasetName)

# create a codelist
# medications codelists: aspirin, amoxicillin, acetaminophen, ibuprofen


# conditions codelists: headache, sinusitis, pharyngitis, bronchitis, Osteoarthritis


# create cohort of interest
# all records of aspirin
# collapse them with a gap of 30 days.
# first record ever.
# Prior observation of at least 365 days.


# Display attrition in a diagram


# Characteristic the cohort of interest, please include in the characterisation the following:
# - Demographics
# - Number of visits in the prior year ([-365, -1])
# - Number of drugs prescribed in the month prior ([-30, -1])
# - % of conditions of interest any time prior ([-Inf, -1])
# - % of medication of interest in the prior year ([-365, -1])
  

# Run large scale characterisation for you cohort of interest using the following tables: `condition_occurrence` and `drug_exposure`, and windows: [-365, -1], [-30, -1], [1, 30], [1, 365]. Compare the results of the two analogous windows which are the concepts that have bigger SMDs.
# Are you able to save the plot comparing LSC?
  

# cdm disconnect
cdmDisconnect(cdm = cdm)
