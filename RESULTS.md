##### Assuming the "cachematrix'R" is in the current working
##### directory. We are creating a 5x5 diagonal matrix with all 2s

<!-- -->
    > source("cachematrix.R")

##### create object to contain the matrix and its calculated inverse
<!-- -->
    > m1 <- makeCacheMatrix( 2*diag(5) )

##### retrieve the inverse, being 1st attempt, the inverse is 
##### calculated, then cached
<!-- -->
    > cacheSolve(m1)
         [,1] [,2] [,3] [,4] [,5]
    [1,]  0.5  0.0  0.0  0.0  0.0
    [2,]  0.0  0.5  0.0  0.0  0.0
    [3,]  0.0  0.0  0.5  0.0  0.0
    [4,]  0.0  0.0  0.0  0.5  0.0
    [5,]  0.0  0.0  0.0  0.0  0.5

##### retrieve inverse gaain. This time it is returning just
##### the cached value and not re-calculating
<!-- -->
    > cacheSolve(m1)
    Getting cached value of inverse....
         [,1] [,2] [,3] [,4] [,5]
    [1,]  0.5  0.0  0.0  0.0  0.0
    [2,]  0.0  0.5  0.0  0.0  0.0
    [3,]  0.0  0.0  0.5  0.0  0.0
    [4,]  0.0  0.0  0.0  0.5  0.0
    [5,]  0.0  0.0  0.0  0.0  0.5


##### Multiplying the matrix with its inverse just to check;
##### Indeed the result is the expected identity matrix
<!-- -->
    > ( 2*diag(5)) * cacheSolve(m1)
    Getting cached value of inverse....
         [,1] [,2] [,3] [,4] [,5]
    [1,]    1    0    0    0    0
    [2,]    0    1    0    0    0
    [3,]    0    0    1    0    0
    [4,]    0    0    0    1    0
    [5,]    0    0    0    0    1
    > 

##### 
#####
