# This is a set of functions that provide some basic
# utilities that make working with R in RStudio easier.  
#
# Note: Whenever functions are added, rmAll$utilLists
# should also be updated.

#Clears the Console in R Studio
clear <- function() {
    cat("\014")
}

#this will clear all user defined variables 
#in the global environment.  When util=TRUE 
#the util functions will also be removed

# character variables can be passed to this function
# to be exclued from removal
rmAll <- function(..., util = FALSE) {
    ##
    #**This vector should be updated when any additional functions
    #  are added to this package**
    
    #  ths is a list of utility functions in this package so they
    #  will not be removed along with everything else in
    #  the global environment
    ##
    utilList <- c("clear","rmAll")
    
    #global envir 
    ge <- as.environment(1) 
    #list of variables in global envir
    x <- ls(ge)
    
    #if util is false don't rm util functions
    if (!util) {
        for (i in utilList) {
            x <- x[x != i] 
        } #end for
    } #end if
    
    #delete environment except the variables passed in 
    ex <- c(...)
    if (is.character(ex) & length(ex) > 0) {
        for (i in ex) {
            x <- x[x != i] 
        } #end for
    } #end if 
    
    #remove unwanted variables from global envir
    rm(list = x, envir = ge)
} #end utilList
