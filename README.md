# Getting and Cleaning Data Course Project
Project from the coursera course "Getting and Cleaning Data" 

Key steps in the code

1. Read train and test data (read.table)
2. Combine X and Y files (cbind)
3. Combine test and train data (rbind)
4. Save only mean and average data (grepl)
5. Split set in groups by activity and subject (split)
6. Calculate mean for each activity and subject (lapply, mean)
7. Create a data frame with the results and organize it with correct labels
8. Print results in a txt file (write.table)
