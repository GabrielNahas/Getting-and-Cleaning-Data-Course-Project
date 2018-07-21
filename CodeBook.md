# Tidy data set description

## The variables in the tidy data
Tidy data contains 180 rows and 68 columns. Each row has averaged variables for each subject and each activity.

## Only all the variables estimated from mean and standard deviation in the tidy set were kept.
* mean(): Mean value
* std(): Standard deviation

## The data were averaged based on subject and activity group.
Subject column is numbered sequentially from 1 to 30. Activity column has 6 types as listed below.

1. WALKING
2. WALKING_UPSTAIRS
3. WALKING_DOWNSTAIRS
4. SITTING
5. STANDING
6. LAYING

## The tidy data contains 180 rows (averaged based on activity and subject) and 81 columns (79 variables and activity labels).

 [3] "fBodyAcc-mean()-X"              
 [4] "fBodyAcc-mean()-Y"              
 [5] "fBodyAcc-mean()-Z"              
 [6] "fBodyAcc-meanFreq()-X"          
 [7] "fBodyAcc-meanFreq()-Y"          
 [8] "fBodyAcc-meanFreq()-Z"          
 [9] "fBodyAcc-std()-X"               
[10] "fBodyAcc-std()-Y"               
[11] "fBodyAcc-std()-Z"               
[12] "fBodyAccJerk-mean()-X"          
[13] "fBodyAccJerk-mean()-Y"          
[14] "fBodyAccJerk-mean()-Z"          
[15] "fBodyAccJerk-meanFreq()-X"      
[16] "fBodyAccJerk-meanFreq()-Y"      
[17] "fBodyAccJerk-meanFreq()-Z"      
[18] "fBodyAccJerk-std()-X"           
[19] "fBodyAccJerk-std()-Y"           
[20] "fBodyAccJerk-std()-Z"           
[21] "fBodyAccMag-mean()"             
[22] "fBodyAccMag-meanFreq()"         
[23] "fBodyAccMag-std()"              
[24] "fBodyBodyAccJerkMag-mean()"     
[25] "fBodyBodyAccJerkMag-meanFreq()" 
[26] "fBodyBodyAccJerkMag-std()"      
[27] "fBodyBodyGyroJerkMag-mean()"    
[28] "fBodyBodyGyroJerkMag-meanFreq()"
[29] "fBodyBodyGyroJerkMag-std()"     
[30] "fBodyBodyGyroMag-mean()"        
[31] "fBodyBodyGyroMag-meanFreq()"    
[32] "fBodyBodyGyroMag-std()"         
[33] "fBodyGyro-mean()-X"             
[34] "fBodyGyro-mean()-Y"             
[35] "fBodyGyro-mean()-Z"             
[36] "fBodyGyro-meanFreq()-X"         
[37] "fBodyGyro-meanFreq()-Y"         
[38] "fBodyGyro-meanFreq()-Z"         
[39] "fBodyGyro-std()-X"              
[40] "fBodyGyro-std()-Y"              
[41] "fBodyGyro-std()-Z"              
[42] "tBodyAcc-mean()-X"              
[43] "tBodyAcc-mean()-Y"              
[44] "tBodyAcc-mean()-Z"              
[45] "tBodyAcc-std()-X"               
[46] "tBodyAcc-std()-Y"               
[47] "tBodyAcc-std()-Z"               
[48] "tBodyAccJerk-mean()-X"          
[49] "tBodyAccJerk-mean()-Y"          
[50] "tBodyAccJerk-mean()-Z"          
[51] "tBodyAccJerk-std()-X"           
[52] "tBodyAccJerk-std()-Y"           
[53] "tBodyAccJerk-std()-Z"           
[54] "tBodyAccJerkMag-mean()"         
[55] "tBodyAccJerkMag-std()"          
[56] "tBodyAccMag-mean()"             
[57] "tBodyAccMag-std()"              
[58] "tBodyGyro-mean()-X"             
[59] "tBodyGyro-mean()-Y"             
[60] "tBodyGyro-mean()-Z"             
[61] "tBodyGyro-std()-X"              
[62] "tBodyGyro-std()-Y"              
[63] "tBodyGyro-std()-Z"              
[64] "tBodyGyroJerk-mean()-X"         
[65] "tBodyGyroJerk-mean()-Y"         
[66] "tBodyGyroJerk-mean()-Z"         
[67] "tBodyGyroJerk-std()-X"          
[68] "tBodyGyroJerk-std()-Y"          
[69] "tBodyGyroJerk-std()-Z"          
[70] "tBodyGyroJerkMag-mean()"        
[71] "tBodyGyroJerkMag-std()"         
[72] "tBodyGyroMag-mean()"            
[73] "tBodyGyroMag-std()"             
[74] "tGravityAcc-mean()-X"           
[75] "tGravityAcc-mean()-Y"           
[76] "tGravityAcc-mean()-Z"           
[77] "tGravityAcc-std()-X"            
[78] "tGravityAcc-std()-Y"            
[79] "tGravityAcc-std()-Z"            
[80] "tGravityAccMag-mean()"          
[81] "tGravityAccMag-std()"

## variable units
Activity variable is a character. Subject variable is integer type. All the other variables are numeric type.
