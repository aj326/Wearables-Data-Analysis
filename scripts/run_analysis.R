library(data.table)
source(file =  "scripts/paths.R")
#4
features<-read.table(features_path)
cols_to_read<-grep("((-mean)|(-std))\\(\\)",features[,2])
col_names<-c("subject","activity",grep("((-mean)|(-std))\\(\\)",features[,2],value = TRUE))
labels<-fread(activity_label_path)

build_dt<- function(x){
        act<-fread(x["activiy"])
        subject<-fread(x["subject"])
        dt<-fread(x["data"],select = cols_to_read)
        named_activity<-sapply(act[,1], function(x){ return(labels[x,2])})[[1]]
        cbind(subject,named_activity,dt)
}
tidyup<-function(){
        joined<-rbind(build_dt(test_paths),build_dt(train_paths))
        colnames(joined)<-tolower(col_names)
        joined$activity<-as.factor(joined$activity)
        joined$subject<-as.factor(joined$subject)
        return(joined)
}

#5
averages<-function(){
        x<-tidyup()
        y<-x[, lapply(.SD, mean, na.rm=TRUE), by=list(subject,activity)]
        y<-y[order(subject,activity)]
        colnames(y)[3:length(colnames(y))]<-as.character(sapply(colnames(y)[3:length(colnames(y))], function(x){paste("average of",x,sep = ":")}))
        return(y)
}


#test_dt[0]<-fread()
#dt<- rbind(fread(test_data_set,select = cols_to_read),fread(train_data_path,select = cols_to_read))
#colnames(dt)<-col_names
#df<-
# construct each data table seperately
# # cbind subject_test.txt
# # cbind activity as factors activity_labels <-> y_{test|train}