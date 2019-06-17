# Packages
# -------- (collection of R functions, compiled code and sample data, and they are stored under a directory called "library" in the R environment)
.libPaths()  # checks available R packages
library()  # gets the list of all the packages installed
search()  # gets all packages currently loaded in the R environment
install.packages("XML")  # install the package named "XML" directly from CRAN
install.packages("C:/Users/moham/Downloads/XML_3.98-1.3.zip", repos = NULL, type = "source")  # installs the package named "XML" manually downloaded from https://cran.r-project.org/web/packages/available_packages_by_name.html
library("XML", lib.loc = "C:/Program Files/R/R-3.6.0/library")  # loads the package named "XML"
