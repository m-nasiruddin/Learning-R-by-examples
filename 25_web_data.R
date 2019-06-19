# Install rjson package
# ---------------------
install.packages("RCurl")
install.packages("XML")
install.packages("stringr")
install.packages("plyr")

# Input data
# ----------
url <- "https://www.geos.ed.ac.uk/~weather/jcmb_ws/"  # reads the URL
links <- getHTMLLinks(url)  # gathers the html links present in the webpage
filenames <- links[str_detect(links, "JCMB_2015")]  # identifies only the links which point to the JCMB 2015 files
filenames_list <- as.list(filenames)  # stores the file names as a list
downloadcsv <- function (mainurl,filename) {
  filedetails <- str_c(mainurl,filename)
  download.file(filedetails,filename)
}  # creates a function to download the files by passing the URL and filename list
l_ply(filenames,downloadcsv,mainurl = "http://www.geos.ed.ac.uk/~weather/jcmb_ws/")  # now applies the l_ply function and save the files into the current R working directory