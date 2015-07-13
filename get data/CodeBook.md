For walkthrough of scripts, look in README.md

#Description of variables
###Collection of variables
Data where collected from 30 persons wearing a samsung phone during the performance of six activities.
The physical activity was coded by observers. 
Other variables were collected from the accelerometer and gyroscope from the samsung phone. 
There were two sets. A group of subjects that made out a training set for the samsung-algorithm. And a group of subjects that made out the testing set for the samsung-algorithm.


#Transformations in data cleansing
The activities were transformed from numericals into the factors specified by the activity_labels.txt.
numericals		factors
* 1            	WALKING
* 2   			WALKING_UPSTAIRS
* 3 			WALKING_DOWNSTAIRS
* 4            	SITTING
* 5           	STANDING
* 6             LAYING


The variable names were imported from the features.txt file. 
The two sets of subjects (training set, testing set) were merged. 
All variables containing one of the two words "mean" or "std" were kept. All other phone-collected variables were dropped. 
The remaining variables were stripped of all punctiuation characters to ensure readability and compatibility with all formulas.
The final file conatains means for each subject on each activity, for each variable.  

#The cleansed variables, within-individual means for each activity. 
 [1] "subject"                     
 [2] "activity"                    
 [3] "tbodyaccmeanx"               
 [4] "tbodyaccmeany"               
 [5] "tbodyaccmeanz"               
 [6] "tbodyaccstdx"                
 [7] "tbodyaccstdy"                
 [8] "tbodyaccstdz"                
 [9] "tgravityaccmeanx"            
[10] "tgravityaccmeany"            
[11] "tgravityaccmeanz"            
[12] "tgravityaccstdx"             
[13] "tgravityaccstdy"             
[14] "tgravityaccstdz"             
[15] "tbodyaccjerkmeanx"           
[16] "tbodyaccjerkmeany"           
[17] "tbodyaccjerkmeanz"           
[18] "tbodyaccjerkstdx"            
[19] "tbodyaccjerkstdy"            
[20] "tbodyaccjerkstdz"            
[21] "tbodygyromeanx"              
[22] "tbodygyromeany"              
[23] "tbodygyromeanz"              
[24] "tbodygyrostdx"               
[25] "tbodygyrostdy"               
[26] "tbodygyrostdz"               
[27] "tbodygyrojerkmeanx"          
[28] "tbodygyrojerkmeany"          
[29] "tbodygyrojerkmeanz"          
[30] "tbodygyrojerkstdx"           
[31] "tbodygyrojerkstdy"           
[32] "tbodygyrojerkstdz"           
[33] "tbodyaccmagmean"             
[34] "tbodyaccmagstd"              
[35] "tgravityaccmagmean"          
[36] "tgravityaccmagstd"           
[37] "tbodyaccjerkmagmean"         
[38] "tbodyaccjerkmagstd"          
[39] "tbodygyromagmean"            
[40] "tbodygyromagstd"             
[41] "tbodygyrojerkmagmean"        
[42] "tbodygyrojerkmagstd"         
[43] "fbodyaccmeanx"               
[44] "fbodyaccmeany"               
[45] "fbodyaccmeanz"               
[46] "fbodyaccstdx"                
[47] "fbodyaccstdy"                
[48] "fbodyaccstdz"                
[49] "fbodyaccmeanfreqx"           
[50] "fbodyaccmeanfreqy"           
[51] "fbodyaccmeanfreqz"           
[52] "fbodyaccjerkmeanx"           
[53] "fbodyaccjerkmeany"           
[54] "fbodyaccjerkmeanz"           
[55] "fbodyaccjerkstdx"            
[56] "fbodyaccjerkstdy"            
[57] "fbodyaccjerkstdz"            
[58] "fbodyaccjerkmeanfreqx"       
[59] "fbodyaccjerkmeanfreqy"       
[60] "fbodyaccjerkmeanfreqz"       
[61] "fbodygyromeanx"              
[62] "fbodygyromeany"              
[63] "fbodygyromeanz"              
[64] "fbodygyrostdx"               
[65] "fbodygyrostdy"               
[66] "fbodygyrostdz"               
[67] "fbodygyromeanfreqx"          
[68] "fbodygyromeanfreqy"          
[69] "fbodygyromeanfreqz"          
[70] "fbodyaccmagmean"             
[71] "fbodyaccmagstd"              
[72] "fbodyaccmagmeanfreq"         
[73] "fbodybodyaccjerkmagmean"     
[74] "fbodybodyaccjerkmagstd"      
[75] "fbodybodyaccjerkmagmeanfreq" 
[76] "fbodybodygyromagmean"        
[77] "fbodybodygyromagstd"         
[78] "fbodybodygyromagmeanfreq"    
[79] "fbodybodygyrojerkmagmean"    
[80] "fbodybodygyrojerkmagstd"     
[81] "fbodybodygyrojerkmagmeanfreq"


