## RUtil

This package includes a few simple functions that I use 
to make using R with RStudio a little bit easier.

###Included are the following:
* clear: Used to clear the text from the console.
* rmAll: Used to remove most user defined variables from the environment.  Call with no arguments to remove everthing but the util functions.  Optionally, the user can pass in character variables containing the names of variables that they want to keep.  Setting util=TRUE will also remove the util functions including rmALL.
