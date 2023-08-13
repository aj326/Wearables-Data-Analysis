library(data.table)
source(file =  "scripts/paths.R")
#4
#gathering columns of use
features<-read.table(features_path)
cols_to_read<-grep("((-mean)|(-std))\\(\\)",features[,2])
col_names<-c("subject","activity",grep("((-mean)|(-std))\\(\\)",features[,2],value = TRUE))
labels<-fread(activity_label_path)

#helper function to build datatables for test data set and train data set
build_dt<- function(x){
        act<-fread(x["activiy"])
        subject<-fread(x["subject"])
        dt<-fread(x["data"],select = cols_to_read)
        named_activity<-sapply(act[,1], function(x){ return(labels[x,2])})[[1]]
        cbind(subject,named_activity,dt)
}
#this function produces dataset required by step 4 (solution for step 4)
tidyup<-function(){
        joined<-rbind(build_dt(test_paths),build_dt(train_paths))
        colnames(joined)<-tolower(col_names)
        joined$activity<-as.factor(joined$activity)
        joined$subject<-as.factor(joined$subject)
        return(joined)
}

#this function returns the averages dataset for step 5 (averages of std and mean, grouped by subject then activity, then ordered by subject then activity)
# The function will write a txt file of the dataset by default. Can be disabled by passing FALSE to averages, i.e. `averages(FALSE)`
averages<-function(write_table=TRUE){
        x<-tidyup()
        #get means, group them by subject, activity
        y<-x[, lapply(.SD, mean, na.rm=TRUE), by=list(subject,activity)]
        #order by subject, activity
        y<-y[order(subject,activity)]
        #this long line simply appends "average of:" to col names
        colnames(y)[3:length(colnames(y))]<-as.character(sapply(colnames(y)[3:length(colnames(y))], function(x){paste("avg",x,sep = ".")}))
        if(write_table)
                write.table(y,file=file.path("data","averages.txt"),row.names = FALSE)
        return(y)
}