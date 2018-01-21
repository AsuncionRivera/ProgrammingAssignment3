#Merges the training and the test sets to create one data set.

to_be_merged1 <- read.table("train/subject_train.txt")        #reads the table subject_train.txt
to_be_merged2 <- read.table("test/subject_test.txt")              #reads the table subject_text.txt
merged_subject <- rbind(to_be_merged1, to_be_merged2)

to_be_merged3 <- read.table("test/X_test.txt")
to_be_merged4 <- read.table("train/X_train.txt")
merged_X <- rbind(to_be_merged3, to_be_merged4)

to_be_merged5
to_be_merged6


#Extracts only the measurements on the mean and standard deviation for each measurement.

#Uses descriptive activity names to name the activities in the data set

#Appropriately labels the data set with descriptive variable names.

#From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
