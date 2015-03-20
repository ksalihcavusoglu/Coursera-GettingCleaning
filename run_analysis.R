# script assumes it is working on UCI HAR Dataset zip extract
# working_directory <- '/home/kemals/Desktop/UCI HAR Dataset'
# setwd(working_directory)

# load data from files
training_features <- read.table('train/X_train.txt')
test_features <- read.table('test/X_test.txt')

training_activity_labels <- read.table('train/y_train.txt')
test_activity_labels <- read.table('test/y_test.txt')

subject_train <- read.table('train/subject_train.txt')
subject_test <- read.table('test/subject_test.txt')

# merge them
features <- rbind(training_features, test_features)
activities <- rbind(training_activity_labels, test_activity_labels)
subject <- rbind(subject_train, subject_test)

# read feature labels, just names
feature_labels <- read.table('features.txt', stringsAsFactors=FALSE)[,2]
# to clean variable names
feature_labels <- gsub ( "\\()", "", gsub( "^t", "Time-", gsub ( "^f", "Frequency-", gsub ( "\\(t", "(Time-", gsub("\\),", ",", gsub("(?<=\\d),(?=\\d)", ":",feature_labels, perl = TRUE) ) ) ) ) )
	
# combine all data and human readable variable names
# generate data set
HARUS <- cbind(features, subject, activities)
names(HARUS) <- append(feature_labels,c("Subject", "Activity"))

# extract std and mean 
mean.extract.index <- grep("mean", names(HARUS), ignore.case = TRUE)
std.extract.index <- grep("std", names(HARUS), ignore.case = TRUE)
subject_activity.index <- 562:563

extract.index <- c(subject_activity.index, mean.extract.index, std.extract.index)
HARUS_extracted <- HARUS[extract.index]

# make activity id's readable like walking etc.
activity_readable <- read.table('activity_labels.txt', col.names = c("id","name"))
HARUS_extracted$Activity <- activity_readable$name[match(HARUS_extracted$Activity, activity_readable$id)]

# tidy data
library(reshape2)
# one observation per line
fdf.melt <- melt(HARUS_extracted, id=c("Subject","Activity"))
# group by mean
fdf.cast <- dcast(fdf.melt, Subject+Activity ~ variable,mean)
# export
write.table(file="tidy_HARUS.txt",x=fdf.cast, row.name=FALSE)
