# Download data
file_url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
file_name <- "getdata-projectfiles-UCI HAR Dataset.zip"
download.file(file_url, file_name)

# Document time of download in a text file
file.create("date_downloaded_zip.txt")
file_connection <- file("date_downloaded_zip.txt")
writeLines(c(file_name,
             "was downloaded from",
             file_url,
             "at",
             as.character(Sys.time())), 
           file_connection)
close(file_connection)

# Unzip data
unzip("getdata-projectfiles-UCI HAR Dataset.zip")
