cacheSolve <- function(varNumValue, ...) {
        
        varOutPutValue <- varNumValue$varGetInverse ()
        varMatrix <- varNumValue$vargetMatrix ()
	varOutPutValue <- solve(varMatrix)
	varNumValue$varSetInverse(varOutPutValue)
        varOutPutValue
}
####### TEST CASE #######
setwd ("Z:/Working_Ali/Training/R Training/Assignment-2")

varTestVariable <- makeCacheMatrix();
summary(varTestVariable);
varTestVariable $varMatrixSetting (matrix(c(10,20,30,40), nrow = 2, ncol = 2) );
varTestVariable $vargetMatrix ();
cacheSolve(varTestVariable);