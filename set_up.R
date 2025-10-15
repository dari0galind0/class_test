#set up script
#----------------#

packageLoad <-
  function(x) {
    for (i in 1:length(x)) {
      if (!x[i] %in% installed.packages()) {
        install.packages(x[i])
      }
      library(x[i], character.only = TRUE)
    }
  }

packages <- c ("tidyverse", "palmerpenguins", "rmarkdown" , "ggthemes" , "RColorBrewer" , "viridis" , "ggdark" ,"plotly", "haven", "readr", "ggimage", "lterdatasampler", "rstatix", "purrr", "httr", "dataRetrieval", "jsonlite")


#load in packages
packageLoad(packages)



