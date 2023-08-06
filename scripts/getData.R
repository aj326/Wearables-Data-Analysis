## checks if raw data exists and unzipped 
getdata <- function(url="https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"){
        data_path<- file.path("data","raw")
        dir.create(data_path,showWarnings = FALSE)
        zip_path <- file.path(data_path,"out.zip")
        if(!file.exists(zip_path)){
                message("Zipped data not found ... downloading zip file ...")
                download.file(url=url,destfile = zip_path)}
        unzipped<-file.path(data_path,"out")
        if(!file.exists(unzipped)){
                message("Unzipped data not found ... unzipping ...")
                unzip(zip_path,exdir = file.path(data_path,"out"))
                }
 }
 