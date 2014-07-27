## When a call is made to "makeCacheMatrix", it defines and 
## returns 4 functions in a list.  Because the variable "x" 
## exists in the environment where these functions are 
## defined they have access to its value. These functions 
## are used in cacheSolve to set and get the matrix
## and its inverse.


## Function to initialize the matrix
makeCacheMatrix <- function(x = matrix()) {
        ## initialize the matrix inverse
        inv <- NULL

        ## set the mairix and re-initializes the inverse
        set <- function(y) {
                x <<- y
                inv <<- NULL
        }

        ## gets/returns the matrix
        get <- function() x

        # calculates the inverse using solve function of R
        setinverse <- function(solve) inv <<- solve

        ## gets the inverse
        getinverse <- function() inv

        list(set = set, get = get,
                setinverse = setinverse,
                getinverse = getinverse)
}


## set the matrix; then solve and cache the inverse
cacheSolve <- function(x) {

        ## retrieve the inverse of 'x'
        invrs <- x$getinverse()

        ## if inverse exists, return it
        if(!is.null(invrs)) {
                message("Getting cached value of inverse....")
                return(invrs)
        }

        ## if inverse does not exist yet, calculate and then
        ## save/cache it
        mtrx <- x$get()
        invrs <- solve(mtrx)
        x$setinverse(invrs)
        invrs
}
