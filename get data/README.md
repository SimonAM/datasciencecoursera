##How the script works
The script uses plyr and dplyr. 

It unzips the samsung.zip-file. 
x_train.txt, sub_train.txt, y_train.txt are merged into a file of the trained dataset. 
x_test.txt, sub_test.txt, y_test.txt are merged into a file of the tested dataset. 
The second column of the feaures.txt are used as variable names.
These two files are merged.
The samsung-variables(from x_train.txt, and x_test.txt) containing any of the words: mean or std are kept. 
The activities are coded numerically but renamed to their proper factor names. 
Punctiouation symbols are dropped from the variable names. 
Means are taken over subjects and activities for each samsung-variable. 
This table is then written into the "tidy_samsung.txt"