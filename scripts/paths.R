base_path<-file.path("data","raw","out","UCI HAR Dataset")
features_path<- file.path(base_path,"features.txt")
activity_label_path<-file.path(base_path,"activity_labels.txt")

test_path<- file.path(base_path,"test")
test_dataset_path<-file.path(test_path,"X_test.txt")
test_subjects_path<-file.path(test_path,"subject_test.txt")
test_activity_path<-file.path(test_path,"y_test.txt")

train_path<- file.path(base_path,"train") 
train_dataset_path<-file.path(train_path,"X_train.txt")
train_subjects_path<-file.path(train_path,"subject_train.txt")
train_activity_path<-file.path(train_path,"y_train.txt")
