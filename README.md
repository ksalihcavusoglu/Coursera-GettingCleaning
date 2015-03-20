## Getting and Cleaning Data

This folder, "CodeBook.md" and "run_analysis.R" files are for cleaning, tidying, exporting Human Activity Recognition Using Smartphones Projects' data, making it more readable and more workable.

The code "run_analysis.R", assumes it is working inside "UCI HAR Dataset". The first two lines sets working directory to "UCI HAR Dataset" folder. Please change it for your fit. 
After running script, a file named "tidy_HARUS.txt" is exported under "UCI HAR Dataset".

## DATA SOURCES

The original data set can be found at
<http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones>.

Data Set is multivariate, time-series, there are 10299 instances, and 561 attributes. The  data is generated with 30 volunteers, making 6 activities.
  
## TASKS

| Details 

1. script assumes it is working on UCI HAR Dataset zip extract

2. load data from files

3. merge them (STEP 1)

4. read feature labels, just names

5. clean variable names (STEP 3)
	
6. combine all data and human readable variable names

7. generate data set

8. extract std and mean  (STEP 2)

9. make activity id's readable like walking etc. (STEP 4)

10 .tidy data (STEP 5)

11. export 

## SOURCES & REFERENCES

- Grep function <http://r.789695.n4.nabble.com/Selecting-columns-whose-names-contain-quot-mutated-quot-except-when-they-also-contain-quot-non-quot--td4580914.html>
- Regex <http://stackoverflow.com/questions/12126597/remove-comma-from-a-digits-portion-string/12126997#12126997>
- Combining Vectors <http://www.r-tutor.com/r-introduction/vector/combining-vectors>
- Gsub help <https://github.com/NikosAlexandris/CourseProject_TidyData>

