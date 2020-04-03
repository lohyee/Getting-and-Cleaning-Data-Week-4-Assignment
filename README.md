# Getting and Cleaning Data Week 4 Assignment
This repo is done for the completion of the Week 4 assignment in Getting and Cleaning Data Coursera course.

## Set-up to generate tidy data file
- First, download and unzip the data file into your R working directory.
- Second, download the R source code into your R working directory.
- Lastly, execute R source code to generate tidy data file.

## Data description
The variables in the data X are sensor data measured with Samsung smartphone from a total 30 subjects. 
The variables in the data Y indicates activity type which subjects performed during recording.

## Required dataset
The required dataset contained variables calculated based on the mean and standard deviation. 
Each row of the dataset is the mean of each activity type for all subjects.

## The code was written based on the instruction of this assignment

To start off, we have to read the given datasets into the R environment

1. Merges the training and the test sets to create one data set. Use command rbind to combine training and test set
2. Extracts only the measurements on the mean and standard deviation for each measurement. Use grep command to get column indexes for variable name contains "mean()" or "std()"
3. Uses descriptive activity names to name the activities in the data set Convert activity labels to characters and add a new column as factor
4. Appropriately labels the data set with descriptive variable names. Give the selected descriptive names to variable columns
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

final_tidy_data.txt will be the output from the execution of the code
