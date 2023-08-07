base_path<-file.path("data","raw","out","UCI HAR Dataset")
features_path<- file.path(base_path,"features.txt")
activity_label_path<-file.path(base_path,"activity_labels.txt")

test_base_path<- file.path(base_path,"test")
test_paths <- c(file.path(test_base_path,"X_test.txt"),file.path(test_base_path,"subject_test.txt"),file.path(test_base_path,"y_test.txt"))
names(test_paths)<-c("data","subjects","activiy")

train_base_path<- file.path(base_path,"train")
train_paths <- c(file.path(train_base_path,"X_train.txt"),file.path(train_base_path,"subject_train.txt"),file.path(train_base_path,"y_train.txt"))
names(train_paths)<-c("data","subjects","activiy")