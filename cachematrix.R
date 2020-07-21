## Hi, this is my proyect for Programming Assignment 2: Lexical Scoping

## This funcion is for coursea


cacheSolve <- function(x, ...) {
## Return a matrix that is the inverse of 'x'
## the function attempts to retrieve an inverse from the matrix
## object passed in as the argument. First, it calls the getinverse()
## function on the input object.
n1<-x$getinverse()
## then it checks to see whether the result is NULL. Since
## makeCacheMatrix() sets the cached inverse to NULL whenever a new
## matrix is set into object, if the value here is not equal to NULL,
## we have a valid, cached inverse and can return it to the parent
## environment
if (!is.null(n1)){
message("getting cached data")
return (n1)
}
## if the result of !is.null(n1) is FALSE, cacheSolve() gets the matrix
## from the input object, calculates the solve(), uses the setinverse()
## function on the input object to set the inverse in the input object,
## and then returns the value of the inverse to the parent environment
## by printing the inverse object
data<-x$get()
n1<-solve(data)
x$setinverse(n1)
n1
}
}


## Write a short comment describing this function


cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
