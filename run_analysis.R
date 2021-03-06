## Create one R script called run_analysis.R that does the following:
# 1 Merges the training and the test sets to create one data set.
# 2 Extracts only the measurements on the mean and standard deviation for each measurement.
# 3 Uses descriptive activity names to name the activities in the data set
# 4 Appropriately labels the data set with descriptive variable names.
# 5 From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

#Download of the file if necessary
#url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
#download.file(url, destfile = "data.zip")
#unzip("data.zip")

#1. Read feature data
setwd("UCI HAR Dataset")
features <- read.table("features.txt")

#2. Read train data
setwd("train")
xtrain <- read.table("X_train.txt")
ytrain <- read.table("Y_train.txt")
train<- cbind(ytrain,xtrain)
subjecttrain <- read.table("subject_train.txt")

#3. Read test data
setwd('../test')
xtest <- read.table("X_test.txt")
ytest <- read.table("Y_test.txt")
test <- cbind(ytest,xtest)
subjecttest <- read.table("subject_test.txt")

#4. Combine test and train data
completeset <- rbind(test,train)
colnames(completeset) <- c("labels", as.character(features$V2))
subject <- rbind(subjecttest,subjecttrain)

#5. Save only mean, std or label columns
columns_to_save <- grepl("mean",colnames(completeset)) | grepl("std",colnames(completeset)) | grepl("labels",colnames(completeset))
completeset <- completeset[,columns_to_save]

#6. Split set in groups by activity and subject (split)
aux <- split(completeset, f=list(completeset$labels, subject$V1), drop = TRUE)

#7. Calculate mean for each activity and subject
results <- lapply(aux, function(x) {apply(x, 2, mean)} )
results <- lapply(results, function(x) {x <- x[-1] }) #Remove the average of the label
results <- unlist(results)

#8. Create a data frame with the results and organize it with correct labels
results<-data.frame(results)
new_row_names <- read.table(text = as.character(row.names(results)), sep = ".")
row.names(results) <- 1:nrow(results)
colnames(results) <- "mean"

#9. Add the number of the subject, activit and the measure made
results$subject <- new_row_names$V2
results$activity <- new_row_names$V1
results$measure <- new_row_names$V3
results <- results[,c(2,3,4,1)]

#10. Put the good labels for the activities
results$activity <- gsub("1", "Walking", results$activity)
results$activity <- gsub("2", "Walking Upstairs", results$activity)
results$activity <- gsub("3", "Walking Downstairs", results$activity)
results$activity <- gsub("4", "Sitting", results$activity)
results$activity <- gsub("5", "Standing", results$activity)
results$activity <- gsub("6", "Laying", results$activity)

#11. Create tidy data set (with one variable per column and one observation per row)
results<- spread(results,measure,mean)

setwd('../..')

#12. Print tidy data
write.table(results, file = "./tidy_data.txt", row.names = FALSE)