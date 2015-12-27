# Load required package(s) -----------------------------------------------------
require(dplyr)

# Read in and clean variable names ---------------------------------------------
features <- read.table("UCI HAR Dataset/features.txt", 
                       col.names = c("ColNumber", "Name"),
                       stringsAsFactors = FALSE)
feature_names <- gsub("\\.", "", make.names(features$Name))  # remove periods
feature_names <- gsub("mean", "Mean", feature_names)  # make easier to read
feature_names <- gsub("std", "STD", feature_names)  # make easier to read
feature_names <- gsub("^t", "time", feature_names)
feature_names <- gsub("Acc", "Accelerometer", feature_names)
feature_names <- gsub("Mag", "Magnitude", feature_names)
feature_names <- gsub("Gyro", "Gyroscope", feature_names)
feature_names <- gsub("^f", "frequency", feature_names)

# Get any mean or std variables
relevant_features <- c(grep("Mean", feature_names), grep("STD", feature_names))

# Read in the training dataset -------------------------------------------------
train <- read.table("UCI HAR Dataset/train/X_train.txt", 
                      col.names = feature_names, row.names = NULL)

# Subset only the mean or std columns
train <- train[, relevant_features]

# Add subject and activity columns
train$Subject <- unlist(read.table("UCI HAR Dataset/train/subject_train.txt",
                              col.names = "Subject", row.names = NULL))
train$Activity <- unlist(read.table("UCI HAR Dataset/train/y_train.txt",
                               col.names = "Activity", row.names = NULL))

# Read in testing dataset ------------------------------------------------------
test <- read.table("UCI HAR Dataset/test/X_test.txt", 
                    col.names = feature_names, row.names = NULL)

# Subset only the mean or std columns
test <- test[, relevant_features]

# Add subject and activity columns
test$Subject <- unlist(read.table("UCI HAR Dataset/test/subject_test.txt",
                            col.names = "Subject", row.names = NULL))
test$Activity <- unlist(read.table("UCI HAR Dataset/test/y_test.txt",
                             col.names = "Activity", row.names = NULL))

# Merge train and test ---------------------------------------------------------
data <- merge(train, test, all = TRUE)

# Replace activity codes with activity descriptions ----------------------------
# Read in activity names
activities <- read.table("UCI HAR Dataset/activity_labels.txt", 
                         col.names = c("Number", "Label"),
                         stringsAsFactors = FALSE)
# Replace
for (i in seq_along(data$Activity)) {
        for (ii in seq_along(activities$Label)) {
                if (data$Activity[i] == ii) {
                        data$Activity[i] <- activities$Label[ii]
                }
        }
}

# Create second dataset with mean of each --------------------------------------
# measurement for each activity & subject --------------------------------------
data2 <- data %>% group_by(Activity, Subject) %>% summarize_each(funs(mean))

# Write data2 to a file
write.table(data2, file = "tidy_dataset.txt", row.names = FALSE)
