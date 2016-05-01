# Code Book

## Steps used in cleaning data
* step 0: 
 1. download data from url and unzip in local drive
 2. read train data, test data, feature labels (denoted by "xlabels"), activity labels (denoted by "activity_names")
 3. train and test data are read as x, y and subject id (denoted as "test_x, train_y, test_subject etc.)

* step 1:
 1. train and test data are combined (denoted by "x", "y" and "subject")

* step 2:
 1. feature names with mean and standard deviation ("std") are extracted from "xlabels" as "feature_names"
 2. preliminary formating is performed

* step 3:
 1. "x" features corresponding to "feature_names" are extracted, denoted by "x_required"
 2. data table ("data_table") is created by binding "subject", "y", and "x_required"
 
* step 4:
 1. column names ("feature_names") are assigned to "data_table"
 2. activity IDs are replaced by activity names in the "data_table"
 
* step 5:
 1. a tidy data set ("avg_data") is extracted as the average of features grouped by subject ID and activity type
 2. the new data set is written in a text file ("tidy_data_submission.txt")


## Identifiers
* subject: identifier of test subject
* activity: type of test activity performed by a subject

The different activities are:
- WALKING
- WALKING_UPSTAIRS
- WALKING_DOWNSTAIRS
- SITTING
- STANDING
- LAYING

## Measurements
1. "tBodyAccMeanX" 
2. "tBodyAccMeanY"                       
3. "tBodyAccMeanZ"
4. "tBodyAccStdevX"                      
5. "tBodyAccStdevY"
6. "tBodyAccStdevZ"                      
7. "tGravityAccMeanX"
8. "tGravityAccMeanY"                    
9. "tGravityAccMeanZ"
10. "tGravityAccStdevX"                   
11. "tGravityAccStdevY"
12. "tGravityAccStdevZ"                   
13. "tBodyAccJerkMeanX"
14. "tBodyAccJerkMeanY"                   
15. "tBodyAccJerkMeanZ"
16. "tBodyAccJerkStdevX"                  
17. "tBodyAccJerkStdevY"
18. "tBodyAccJerkStdevZ"                  
19. "tBodyGyroMeanX"
20. "tBodyGyroMeanY"                      
21. "tBodyGyroMeanZ"
22. "tBodyGyroStdevX"                     
23. "tBodyGyroStdevY"
24. "tBodyGyroStdevZ"                     
25. "tBodyGyroJerkMeanX"  
26. "tBodyGyroJerkMeanY"                  
27. "tBodyGyroJerkMeanZ" 
28. "tBodyGyroJerkStdevX"                 
29. "tBodyGyroJerkStdevY"     
30. "tBodyGyroJerkStdevZ"                 
31. "tBodyAccMagMean"            
32. "tBodyAccMagStdev"                    
33. "tGravityAccMagMean"            
34. "tGravityAccMagStdev"                 
35. "tBodyAccJerkMagMean"      
36. "tBodyAccJerkMagStdev"                
37. "tBodyGyroMagMean"         
38. "tBodyGyroMagStdev"                   
39. "tBodyGyroJerkMagMean" 
40. "tBodyGyroJerkMagStdev"               
41. "fBodyAccMeanX"   
42. "fBodyAccMeanY"                       
43. "fBodyAccMeanZ"     
44. "fBodyAccStdevX"                      
45. "fBodyAccStdevY"       
46. "fBodyAccStdevZ"                      
47. "fBodyAccMeanFreqX"
48. "fBodyAccMeanFreqY"                   
49. "fBodyAccMeanFreqZ"
50. "fBodyAccJerkMeanX"                   
51. "fBodyAccJerkMeanY"
52. "fBodyAccJerkMeanZ"                   
53. "fBodyAccJerkStdevX"
54. "fBodyAccJerkStdevY"                  
55. "fBodyAccJerkStdevZ"
56. "fBodyAccJerkMeanFreqX"               
57. "fBodyAccJerkMeanFreqY"
58. "fBodyAccJerkMeanFreqZ"               
59. "fBodyGyroMeanX"
60. "fBodyGyroMeanY"                      
61. "fBodyGyroMeanZ"   
62. "fBodyGyroStdevX"                     
63. "fBodyGyroStdevY"
64. "fBodyGyroStdevZ"                     
65. "fBodyGyroMeanFreqX"
66. "fBodyGyroMeanFreqY"                  
67. "fBodyGyroMeanFreqZ"
68. "fBodyAccMagMean"                     
69. "fBodyAccMagStdev"
70. "fBodyAccMagMeanFreq"                 
71. "fBodyBodyAccJerkMagMean"
72. "fBodyBodyAccJerkMagStdev"            
73. "fBodyBodyAccJerkMagMeanFreq"
74. "fBodyBodyGyroMagMean"                
75. "fBodyBodyGyroMagStdev"
76. "fBodyBodyGyroMagMeanFreq"            
77. "fBodyBodyGyroJerkMagMean"
78. "fBodyBodyGyroJerkMagStdev"           
79. "fBodyBodyGyroJerkMagMeanFreq"

