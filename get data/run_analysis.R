#First downloading the data and installing dependencies (plyr and dplyr)
setwd("C:/Users/Simon/Google Drive/R/coursera/getdata")
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", destfile="samsung.zip")
unzip("samsung.zip", exdir="./samsung")
list.files()
library(plyr)
library(dplyr)
run_analysis <- function(measurement){

# Read x feature list
x_test_names <- read.csv("samsung/UCI HAR Dataset/features.txt", sep="", header=FALSE)
x_names <- as.character(x_test_names[,2])

#Read files for test
x_test <- read.table("samsung/UCI HAR Dataset/test/x_test.txt",sep="", header=FALSE)
sub_test <- read.csv("samsung/UCI HAR Dataset/test/subject_test.txt", sep=" ", header=FALSE)
y_test <- read.csv("samsung/UCI HAR Dataset/test/y_test.txt", sep=" ", header=FALSE)
testfile <- data.frame(y_test, sub_test, x_test)
colnames(testfile) <- c("activity", "subject", x_names)


# Read files for train
x_train <- read.table("samsung/UCI HAR Dataset/train/x_train.txt",sep="", header=FALSE)
sub_train <- read.csv("samsung/UCI HAR Dataset/train/subject_train.txt", sep=" ", header=FALSE)
y_train <- read.csv("samsung/UCI HAR Dataset/train/y_train.txt", sep=" ", header=FALSE)
trainfile <- data.frame(y_train, sub_train, x_train)
colnames(trainfile) <- c("activity", "subject", x_names)

#1 merge the files

mergefile <- rbind(testfile,trainfile)

#2 look only at mean and sd-variables.
correctnames <- "mean|std|subject|activity"
mergefile <- mergefile[grep(correctnames,colnames(mergefile),value=TRUE,invert=FALSE)]
mergefile <- arrange(mergefile,subject)
mergefile <- mutate(mergefile, subject=as.factor(subject))
mergefile <- tbl_df(mergefile)
#3 use correct activity names
mergefile <- mutate(mergefile, activity=as.factor(activity))
activity_labels <- read.csv("samsung/UCI HAR Dataset/activity_labels.txt", sep=" ", header=FALSE)
levels(mergefile$activity)<- activity_labels$V2 


#4 Use correct variable names. 
colnames(mergefile) <- tolower(colnames(mergefile))
#remove the () from variable names. 
names(mergefile)<- gsub("[[:punct:]]","",names(mergefile))

#5 Create new dataset only with averages of each variables per activity and subject. 
#subject as factor

by_activity <- group_by(mergefile, activity) 
tidy_samsung <- mergefile %>%
        group_by(subject,activity) %>%
        summarise_each(funs(mean))
}                
write.table(tidy_samsung, file="tidy_samsung.txt", row.names=FALSE, col.names =TRUE)
