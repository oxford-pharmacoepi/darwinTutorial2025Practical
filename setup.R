install.packages("pak")
pak::pkg_install(c(
  "duckdb", "omopgenerics", "CDMConnector", "CodelistGenerator", 
  "CohortCharacteristics", "TreatmentPatterns", "visOmopResults", "gt", 
  "reactable", "ggplot2", "plotly", "officer", "flextable", "DiagrammeR",
  "DiagrammeRsvg", "grid", "png", "rsvg", "lubridate", "usethis", "here"
))
