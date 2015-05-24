makeCacheMatrix <- function(varNumValue = numeric()) {
        
        varOutPutValue <- NULL
        
        varMatrixSetting <- function(varSettingValue) {
                varNumValue <<- varSettingValue
                varOutPutValue <<- NULL}

        vargetMatrix <- function()  varNumValue 

        varSetInverse <- function(varInput) varOutPutValue <<- varInput
        varGetInverse <- function() varOutPutValue 
       
        list(varMatrixSetting = varMatrixSetting, vargetMatrix = vargetMatrix, varSetInverse = varSetInverse,  varGetInverse = varGetInverse)

}
####### TEST CASE #######
setwd ("Z:/Working_Ali/Training/R Training/Assignment-2")

varTestVariable <- makeCacheMatrix();
summary(varTestVariable);
varTestVariable $varMatrixSetting (matrix(c(10,20,30,40), nrow = 2, ncol = 2) );
varTestVariable $vargetMatrix ();
varTestVariable $varSetInverse(40);
varTestVariable $varGetInverse ();
