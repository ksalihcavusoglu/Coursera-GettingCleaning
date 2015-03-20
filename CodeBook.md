Features in tidy_HARUS.txt
======================

"tidy_HARUS.txt" is gathered, cleaned, worked dataset derived from existing data set from UCI(*). It is an R "data.frame" that contains 180 obs. of  88
variables. First 2 of them are labels, Subject and Activity. The others are calculated  mean values per Subject (experiment volunteers) and
Activity, that derive from mean and standard deviation values of features
measured from an accelerometer and gyroscope as presented in an experimental
data set (UCI HAR Dataset).

Subject's are volunteers that carry the experiment. Activity is a variable for 6 activities namely walking, walking upstairs, walking downstairs, sitting, standing, laying. 

Data is collected with smartphones, embedded accelerometer and gyroscope. Features are normalized and bounded within [-1,1]. Time basad measurements are named starting with Time, frequency based measurements are named starting with Frequency and others are starting with angle. The variables are mean and standart deviation of measured data. For more details, please look at UCI dataset information
