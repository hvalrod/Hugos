## Put comments here that give an overall description of what your
## functions do

# These two functions will take a matrix and compute the inverse of the matrix, and load it into the cache. 
# If the matrix has been already computed, they will retrieve the inversed matrix from cache.

#The following function will create a list of functions that will:
# 1.-set the value of the matrix
# 2.-Get the value of the matrix
# 3.-Set the value of the inverse
# 4.-Get the value of the inversed matrix
makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        setmatrix <- function(y) {
                x <<- y
                m <<- NULL
        }
        getmatrix <- function() x
        setinverse <- function(solve) m <<- solve
        getinverse <- function() m
        list(setmatrix = setmatrix, getmatrix = getmatrix,
             setinverse = setinverse,
             getinverse = getinverse)
}
}


# The following function will check if the inversed matrix has been already calculated.
# If that is the case, it will retrieve the value from cahe.
# If it is not, it will calculate the inversed matrix and print its value

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m <- x$getinverse()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$getmatrix()
        m <- solve(data, ...)
        x$setinverse(m)
        m
}