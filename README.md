# Getting and Cleaning Data Course Project

This repository contains `R` scripts for obtaining the Human Activity Recognition Using Smartphones Dataset<sup>[1](#fn1)</sup> for this course project and for producing a tidy dataset from that larger dataset. There are two `R` scripts in this repo. They are:

## 1. get_data.R
This script downloads the large dataset from the Coursera course website into a zipped file named `getdata-projectfiles-UCI HAR Dataset.zip`. Next, the script records the time at which this dataset was downloaded into a file called `date_downloaded_zip.txt`. Finally, this script unzips this dataset into a directory called `UCI HAR Dataset`. The following script and analysis assume you have this directory in your current working directory.

## 2. run_analysis.R
This script does several things. First, it requires the package `dplyr` to work, so it loads that package into `R`. Next, it reads the variable names into `R` and processes them to make them more human-readable (removing punctuation, expanding abbreviated words, etc.). Then, it picks out only the variables we are interested in, i.e., those containing means and standard deviations. Next, the training dataset is read into `R`, subsetted for only the relevant columns, and the Subject IDs and Activity codes are added. The same is done for the test dataset. Then, the two datasets are merged. Next, the activity labels are read into `R`, and the activity codes in the merged dataset are replaced with their corresponding activity labels. The dataset (stored in the `R` object `data`) is now in tidy form.

The script continues, however, to produce a second summary tidy dataset, using `dplyr` to group the data by activity and by subject and then to summarize each variable by taking the mean. This second dataset is stored in the `R` object `data2`, which is then written to the file `tidy_dataset.txt`.

# Reference
<a name="fn1">1</a>: Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012
