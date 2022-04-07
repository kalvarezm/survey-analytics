#------------------------------------
# INSTALL RENV
#------------------------------------
install.packages("renv") # Project Environments for R

#------------------------------------
# INSTALL RMARKDOWN PACKAGES
#------------------------------------
install.packages("rmarkdown") # Use notebook
install.packages("markdown") # Knit (export html, word)
install.packages("mime") # Knit (export html, word)
install.packages("tinytex") # Knit (export PDF)
tinytex::install_tinytex() # Knit (export PDF)

#------------------------------------
# INSTALL DEV PACKAGES
#------------------------------------
install.packages("todor") # Comment management
install.packages("styler") # Code style
install.packages("config") # Config files in *.yml
install.packages("devtools") # Create packages
install.packages("tictoc") # Measure time
install.packages("microbenchmark") # Benchmarking
install.packages("log4r") # Log files
install.packages("here") # Relative paths

#------------------------------------
# INSTALL DATA MANIPULATION PACKAGES
#------------------------------------
install.packages("tidyverse") # Includes: dplyr, dtplyr, ggplot2
install.packages("data.table") # data.frame extension
install.packages("feather") # File storage
install.packages("fst") # File storage

#------------------------------------
# INSTALL ANALYTICS PACKAGES
#------------------------------------
install.packages("skimr") # Summary
install.packages("psych") # Correlation
