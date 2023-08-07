library(data.table)
source(file =  "scripts/paths.R")
features<-read.table(features_path)
cols_to_read<-grep("((-mean)|(-std))\\(\\)",features[,2])
col_names<-grep("((-mean)|(-std))\\(\\)",features[,2],value = TRUE)
test_dt<-fread(test_dataset_path,select = cols_to_read)
test_act<-fread(test_activity_path)
labels<-fread(activity_label_path)
named_activity<-sapply(test_act[,1], function(x){ return(labels[x,2])})[[1]]
test_dt<-cbind(named_activity,fread(test_subjects_path),test_dt)

#test_dt[0]<-fread()
#dt<- rbind(fread(test_data_set,select = cols_to_read),fread(train_data_path,select = cols_to_read))
#colnames(dt)<-col_names
#df<-
# construct each data table seperately
# # cbind subject_test.txt
# # cbind activity as factors activity_labels <-> y_{test|train}