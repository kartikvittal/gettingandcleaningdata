#This document explains how I went about creating the run_analysis.R script

##Various Stesp are show below

*Step 1: Took at the library files that I might need

*Step 2: Set up the working directory

*Step 3: Downloaded the file

*Step 4: Reading each of the files into dataframes
  
          *1. Activity labels
          
          *2. Features List: Also created the unique features list. This was done to solve the dups problem. Later I will use this to extract the col's that have MEAN and STD in them
          
          *3. Getting list of subjects for Test Data: The 30 subjects on which the tests were conducted
          
          *4. Getting list of measures for Test Data: These were the values that were collected. Like tbodyaccmeanx etc
          
          *5. Getting list of activities for Test Data: The 5 activities like walking, laying etc
          
          *6. Repeat Steps 3 through 5 for Training dataset

*Step 5: Row Binding test and train subject data

*Step 6: Row Binding test and train activity data

*Step 7: Row Binding test and train measure data

*Step 8: Column Binding dataframes from steps 7 through 9 to a dataframe called combo_data

*Step 9: Provided column names to this combined dataset

*Step 10: Merged with the activity dataset to get the activity names instead of the activityid which is just a number. Called this dataset merge

*Step 11: Extracted col's that have mean and std as 2 different datasets and column binded them again

*Step 12: Renamed the col V2 as activityname. At this stage we have only those columns that are required. However the variable names are not yet ready

*Step 13: Manipulations on the variable names. 1. Converted them to lower case 2. Removed all dots 3. The names seem to be descriptive. Hence did not change them

*Step 14: Manipulations on the activity names. 1. Converted them to lower case 2. Removed all underscores. At this stage the dataset required is ready for final calculations

*Step 15: Grouped by subjectid and activity name and then summarized it to calculate the mean of all the variables using summarise_each function 

*Step 16: Last Step. Write down the output to a txt file