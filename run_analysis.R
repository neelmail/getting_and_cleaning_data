library(dplyr)
library(data.table)

### step 0 ###
# download data
downloadfile <- "assignment_download.zip"
if (!file.exists(downloadfile)) {
    fileurl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
    download.file(fileURL, downloadfile, method="curl")
    unzip(downloadfile)
}

# train data
train_x <- fread("./UCI HAR Dataset/train/X_train.txt")
train_y <- fread("./UCI HAR Dataset/train/y_train.txt")
train_subject <- fread("./UCI HAR Dataset/train/subject_train.txt")
# test data
test_x  <- fread("./UCI HAR Dataset/test/X_test.txt")
test_y <- fread("./UCI HAR Dataset/test/y_test.txt")
test_subject <- fread("./UCI HAR Dataset/test/subject_test.txt")
# read feature names
xlabels <- read.table("./UCI HAR Dataset/features.txt")
xlabels[,2] <- as.character(xlabels[,2])
# read activity names
activity_names <- fread("./UCI HAR Dataset/activity_labels.txt")

# step 1 ###
# combine all x and y for train and test data
x <- rbind(train_x, test_x)
y <- rbind(train_y, test_y)
subject <- rbind(train_subject, test_subject)

### step 2 ###
# get features with "mean" and "std"
regex <- ".*mean.*|.*std.*"
feature_id <- grep(regex, xlabels[,2], ignore.case = TRUE)
feature_names <- xlabels[feature_id,][,2]
# formatting descriptive feature names
feature_names <- gsub('-mean', 'Mean', feature_names)
feature_names <- gsub('-std', 'Stdev', feature_names)
feature_names <- gsub('[(][)]', '', feature_names)
feature_names <- gsub('[-]', '', feature_names)

### step 3 ###
# assign descriptive names to data
# extract "mean" and "std" features from data
x_required <- x[, feature_id, with = FALSE]
# bind extracted x and y columns
data_table <- cbind(subject, y, x_required)

### step 4 ###
# assign feature names
colnames(data_table) <- c("subject", "activity", feature_names)
# assign activity names
data_table$activity = factor(data_table$activity, levels = activity_names[[1]], labels = activity_names[[2]])

### step 5 ###
# create new data table from average over activity and subject
avg_data <- tbl_df(data_table) %>%
    group_by(subject, activity) %>%
    summarise_each(funs(mean))

# make tidy dataset
write.table(avg_data, "./tidy_data_submission.txt",
            row.names = FALSE,
            append = FALSE,
            quote = FALSE)
