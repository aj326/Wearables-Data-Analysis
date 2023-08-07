# Wearables-Data-Analysis
This is a project I am doing for Coursera's/John Hopkins "Getting and Cleaning Data" course for data science specilization.
The main goal of this project is to get some raw data, tidy it up, and do some analysis on it. The project also asks for a codebook and a readme to help other data analysts make sense of the repo.
This README will provide an overview of the structure and logic of the repo.

## Structure

"data/"
Path for data
"scripts/"
Path for R script(s)
"codebook.md"

1. describes the variables,
2. describes the data,
3. describes any transformations or work that performed to clean up the data 


## Logic

1. "main.R" is the user's interface with the data and scripts
2. "main.R" calls "setup.R" to install missing packages that are required by this project
3. "main.R" calls "getdata.R" to download the zipfile and unzip it if needed; otherwise, nothing happens
4. "main.R" calls "tidyup.R" to read the raw data and output the tidy data

## How to run the code
From R or Rstudio, run
`main.R`