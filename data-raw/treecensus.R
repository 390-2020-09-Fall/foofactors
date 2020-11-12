# Code used to produce 'treecensus' dataset used in stem_code_filter()
# 'treecensus' is saved to 'R/sysdata.rda'

treecensus <- read.csv(text=RCurl::getURL("https://raw.githubusercontent.com/390-2020-09-Fall/SCBI-ForestGEO-Data/master/tree_main_census/data/census-csv-files/scbi.stem3.csv"))
x <- sample(3000)

usethis::use_data(treecensus, overwrite = TRUE)
