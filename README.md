# getting_cleaning_data

This is a repo to process UCI HAR Dataset (http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) 
and calculate averages of mean and std metrics grouped by person and his type of activity.

This repo contains README.md, Code_Book.txt and run_analysis.R script.

Code_Book.txt contains description of variables in final dataset.

run_analysis.R script does next:
1. Reads data from test and train folders of UCI HAR Dataset.
2. Cbinds main metrics with activity and subject data for each test and train data.
3. Unites datasets resulted from step 2 to one dataset.
4. Leaves only needed metrics (mean and std).
5. Adds descriptive activity names and rename metrics labels.
6. Calculates average of each variable for each activity and each subject.
