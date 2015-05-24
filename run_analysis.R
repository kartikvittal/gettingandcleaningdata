#stating all the library files that I might need
library(dplyr)

#Setting the working directory
setwd("~/Box Sync/Kartik.Vittal-Documents/DataScience Specialization/3.Getting and Cleaning Data/Course")

#Downloading the file
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl,"data.zip",method="curl")

getwd()

#read each of the files to respective dataframes
#1.Geting activity labels
activity_labels <- read.table(file= "./UCI HAR Dataset/activity_labels.txt")
activity_labels

#2.Geting features list
features <- read.table(file= "./UCI HAR Dataset/features.txt")
#Creating a list of unique features list, so that I can extract the ones that have mean and std later
unique_measureList<- make.names(features$V2,unique=T) 

#3.Getting list of subjects for Test Data
subject_test <- read.table(file= "./UCI HAR Dataset/test/subject_test.txt")
dim(subject_test)

#4.Getting list of measures for Test Data
x_test <- read.table(file= "./UCI HAR Dataset/test/X_test.txt")
dim(x_test)

#5.Getting list of activities for Test Data
y_test <- read.table(file= "./UCI HAR Dataset/test/Y_test.txt")
dim(y_test)

#6.Getting list of subjects for Train Data
subject_train <- read.table(file= "./UCI HAR Dataset/train/subject_train.txt")
dim(subject_train)

#7.Getting list of measures for Train Data
x_train <- read.table(file= "./UCI HAR Dataset/train/X_train.txt")
dim(x_train)

#8. Combining test and train measures
m_test_train <- rbind(x_test,x_train)
dim(m_test_train)

#9. Combining test and train subject data
s_test_train <- rbind(subject_test,subject_train)
dim(s_test_train)

#10. Combing test and train activity data
a_test_train <- rbind(y_test,y_train)
dim(a_test_train)

#11. Bring everything together
combo_data <- cbind(s_test_train, a_test_train, m_test_train)
dim(combo_data)

#12. Giving Column Names
names(combo_data)[3:563]<- unique_measureList
names(combo_data)[1] = "subjectid"
names(combo_data)[2] = "activityid"

#13. Merging to get the Activity Name
merge <- merge(combo_data, activity_labels, by.x = "activityid", by.y="V1", all=T)
dim(merge)

#14. Extracting Subject and Activity into a seperate dataframe
sub_act <- select(merge, subjectid,V2)
dim(sub_act)

#15. Select measures that have mean in them
combo_data_mean <- select(merge,contains("mean"))
dim(combo_data_mean)

#16. Select measures that have std in them
combo_data_std <- select(merge,contains("std"))
dim(combo_data_std)

#17. Join them all back
final_data <- cbind(sub_act, combo_data_mean, combo_data_std)
dim(final_data)
names(final_data)
final_data <- rename(final_data, activityname = V2)

#18. Descriptive variable names
  #Step1: change to lower case
names(final_data) <- tolower(names(final_data))

  #Step2: removing dots. The colnames seem to be descriptive. Hence not changing any more
names(final_data) <- gsub(".","",names(final_data),fixed=T)

#19. Renaming activities to remove underscore and convert to lower
final_data$activityname <- gsub("_","", final_data$activityname )
final_data$activityname <- tolower(final_data$activityname)
View(final_data)

#things to do

#3. write to a file
#4. readme file
#5. codebook
#6. github upload

#20.group by to calculate the means
grouping <- group_by(final_data,subjectid,activityname)
grouping
group_data <- summarise_each(grouping,funs(mean))
dim(group_data)


#21.Writing the output to a txt file
write.table(group_data,"final_data.txt", row.names=F)


