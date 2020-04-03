library(dplyr)
 
# Reading training data set
x_train <- read.table("./UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("./UCI HAR Dataset/train/Y_train.txt")
sub_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")

# Reading test data set
x_test <- read.table("./UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("./UCI HAR Dataset/test/Y_test.txt")
sub_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")

# Reading features vector
features <- read.table("./UCI HAR Dataset/features.txt")

# Reading actvity labels
activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt")

# Merges the training and the test sets to create one data set.
x_total <- rbind(X_train, X_test)
y_total <- rbind(Y_train, Y_test)
sub_total <- rbind(sub_train, sub_test)

# Extract only the measurements on the mean and standard deviation for each measurement
selected_var <- features[grep("mean\\(\\)|std\\(\\)",features[,2]),]
x_total <- x_total[,selected_var[,1]]

# Uses descriptive activity names to name the activities in the data set
colnames(y_total) <- "label"
activity <- factor(Y$label, labels = as.character(activity_labels[,2]))
#activity <- Y$activity

# Appropriately labels the data set with descriptive variable names
colnames(X) <- features[features_selected[,1],2]

# From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
colnames(sub_total) <- "subject"
combine <- cbind(x_total, activity, sub_total)
temp <- group_by(combine,activity, subject)
final <- summarize_all(temp,funs(mean))

# Write to required final tidy data
write.table(final, file = "./final_tidy_data.txt", row.names = FALSE, col.names = TRUE)

