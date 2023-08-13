# Wearables-Data-Analysis

This is a project I am doing for Coursera's/John Hopkins "Getting and Cleaning Data" course for data science specialization.
The main goal of this project is to get some raw data, tidy it up, and do some analysis on it. The project also asks for a codebook and a readme to help other data analysts make sense of the repo.
This README will provide an overview of the structure and logic of the repo.

## Structure

"README.md"
This file

"data/"
Path for data

"scripts/"
Path for R script(s)

"codebook.rmd"
The codebook: 
        1. describes the variables,
        2. describes the data,
        3. describes any transformations or work that performed to clean up the data 

##File Structure

I ran tree on the root dir.
`tree`

This is what it should look like:

<!-- language: lang-none -->
    .
    ├── codebook.rmd
    ├── data **
    │   ├── averages.txt *
    │   └── raw
    │       ├── out
    │       │   └── UCI HAR Dataset
    │       │       ├── activity_labels.txt
    │       │       ├── features_info.txt
    │       │       ├── features.txt
    │       │       ├── README.txt
    │       │       ├── test
    │       │       │   ├── Inertial Signals
    │       │       │   │   ├── body_acc_x_test.txt
    │       │       │   │   ├── body_acc_y_test.txt
    │       │       │   │   ├── body_acc_z_test.txt
    │       │       │   │   ├── body_gyro_x_test.txt
    │       │       │   │   ├── body_gyro_y_test.txt
    │       │       │   │   ├── body_gyro_z_test.txt
    │       │       │   │   ├── total_acc_x_test.txt
    │       │       │   │   ├── total_acc_y_test.txt
    │       │       │   │   └── total_acc_z_test.txt
    │       │       │   ├── subject_test.txt
    │       │       │   ├── X_test.txt
    │       │       │   └── y_test.txt
    │       │       └── train
    │       │           ├── Inertial Signals
    │       │           │   ├── body_acc_x_train.txt
    │       │           │   ├── body_acc_y_train.txt
    │       │           │   ├── body_acc_z_train.txt
    │       │           │   ├── body_gyro_x_train.txt
    │       │           │   ├── body_gyro_y_train.txt
    │       │           │   ├── body_gyro_z_train.txt
    │       │           │   ├── total_acc_x_train.txt
    │       │           │   ├── total_acc_y_train.txt
    │       │           │   └── total_acc_z_train.txt
    │       │           ├── subject_train.txt
    │       │           ├── X_train.txt
    │       │           └── y_train.txt
    │       └── out.zip
    ├── README.md
    ├── scripts
    │   ├── getdata.R
    │   ├── paths.R
    │   └── run_analysis.R
    └── Wearables-Data-Analysis.Rproj
     
 *Notes*:
 
 * *averages.txt is produced after calling `averages(TRUE)` from the script `run_analysis.R`
 
 * **data/ can (optionally) be constructed by calling `getdata()` from the script `getdata.R`. Otherwise the user should manually download the zip and place it a folder called "raw" in a folder called "data". Then extract the zip to a folder called "out"
 
## Logic

1. (optional) "getdata.R" downloads zip with dataset and extracts it
2. "path.R" has some variables I use in run_analysis.R
3. run_analysis.R Builds tables for step 4 and 5. 


## How to run the code

From R or Rstudio,
1. Makes sure you have library "data.table"
`install.packages("data.table")`
2. (Optional) Run getdata.R
3. Run run_analysis.R
