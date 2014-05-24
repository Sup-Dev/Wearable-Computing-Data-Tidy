### The script merges the training and test data sets to create a single tidy data set

The following data sets are present in the UCI HAR Dataset

Test data set contants the following files that where merged into a test table:
*test/x_test.txt
*test/y_test.txt
*test/subject_test.txt

Training data set contants the following files that where merged into a test table:
*test/x_train.txt
*test/y_train.txt
*test/subject_train.txt

The mean and the standard deviation was derived from the file "features.txt". This file contains the varibles "mean" and "std" from which the above was derived.

Next, the average of each varible corresponing to each activity and subject is created. The rows are reordered according activity that is performed by the subjects present. Finally, the activty names are derived from the file "activity_label.txt".

Finally, the "tidyData.txt" is created containing columns for mean/std. The names are taken from the file "features.txt".