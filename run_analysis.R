features <- read.table("UCI HAR Dataset/features.txt")["V2"]
activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt")["V2"]

## Data extraction
x_train <- read.table("UCI HAR Dataset/train/X_train.txt")
names(x_train) <- features$V2

y_train <- read.table("UCI HAR Dataset/train/y_train.txt")
names(y_train) <- "labels"

subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt")
names(subject_train) <- "subjects"

x_test <- read.table("UCI HAR Dataset/test/X_test.txt")
names(x_test) <- features$V2

y_test <- read.table("UCI HAR Dataset/test/y_test.txt")
names(y_test) <- "labels"

subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt")
names(subject_test) <- "subjects"

## Extract mean and standard deviation
mean_std_names <- colnames(x_test)[grep("mean|std", features$V2)]
test <- cbind(subject_test, y_test, subset(x_test, select=mean_std_names))
train <- cbind(subject_train, y_train, subset(x_train, select=mean_std_names))

## Merge test and train
mergeData <- rbind(test, train)

