#                                             Data Dictionary

##    This document explains the columns of the final dataset

###Brief Overview from the Original Dataset:
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist.

For each record it is provided:

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

##Final Dataset
The final dataset has 180 rows and 88 columns

subjectid: Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

activityname: Links the class labels with their activity name. The values are as shown below. The first column is the Id, the second column is the activity name that was provided in the original dataset. The third column is the transformed variable by removing underscore and lowering

1 WALKING walking

2 WALKING_UPSTAIRS  walkingupstairs

3 WALKING_DOWNSTAIRS  walkingdownstairs

4 SITTING sitting

5 STANDING  standing

6 LAYING  laying

measures: These are the mean(average) values of the original measures that were of interest for this exercise. These contain the variables that have the words MEAN and STD from the original dataset. There are a total of 86 measures and their names have been lower cased and dots have been removed. List provided below.


tbodyaccmeanx

tbodyaccmeany

tbodyaccmeanz

tgravityaccmeanx

tgravityaccmeany

tgravityaccmeanz

tbodyaccjerkmeanx

tbodyaccjerkmeany

tbodyaccjerkmeanz

tbodygyromeanx

tbodygyromeany

tbodygyromeanz

tbodygyrojerkmeanx

tbodygyrojerkmeany

tbodygyrojerkmeanz

tbodyaccmagmean

tgravityaccmagmean

tbodyaccjerkmagmean

tbodygyromagmean

tbodygyrojerkmagmean

fbodyaccmeanx

fbodyaccmeany

fbodyaccmeanz

fbodyaccmeanfreqx

fbodyaccmeanfreqy

fbodyaccmeanfreqz

fbodyaccjerkmeanx

fbodyaccjerkmeany

fbodyaccjerkmeanz

fbodyaccjerkmeanfreqx

fbodyaccjerkmeanfreqy

fbodyaccjerkmeanfreqz

fbodygyromeanx

fbodygyromeany

fbodygyromeanz

fbodygyromeanfreqx

fbodygyromeanfreqy

fbodygyromeanfreqz

fbodyaccmagmean

fbodyaccmagmeanfreq

fbodybodyaccjerkmagmean

fbodybodyaccjerkmagmeanfreq

fbodybodygyromagmean

fbodybodygyromagmeanfreq

fbodybodygyrojerkmagmean

fbodybodygyrojerkmagmeanfreq

angletbodyaccmeangravity

angletbodyaccjerkmeangravitymean

angletbodygyromeangravitymean

angletbodygyrojerkmeangravitymean

anglexgravitymean

angleygravitymean

anglezgravitymean

tbodyaccstdx

tbodyaccstdy

tbodyaccstdz

tgravityaccstdx

tgravityaccstdy

tgravityaccstdz

tbodyaccjerkstdx

tbodyaccjerkstdy

tbodyaccjerkstdz

tbodygyrostdx

tbodygyrostdy

tbodygyrostdz

tbodygyrojerkstdx

tbodygyrojerkstdy

tbodygyrojerkstdz

tbodyaccmagstd

tgravityaccmagstd

tbodyaccjerkmagstd

tbodygyromagstd

tbodygyrojerkmagstd

fbodyaccstdx

fbodyaccstdy

fbodyaccstdz

fbodyaccjerkstdx

fbodyaccjerkstdy

fbodyaccjerkstdz

fbodygyrostdx

fbodygyrostdy

fbodygyrostdz

fbodyaccmagstd

fbodybodyaccjerkmagstd

fbodybodygyromagstd

fbodybodygyrojerkmagstd

