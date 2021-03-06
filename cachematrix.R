## Put comments here that give an overall description of what your
## functions do
## A pair of functions that cache the inverse of a matrix.

## Write a short comment describing this function
## This function creates a special "matrix" object that can cache its inverse.
makeCacheMatrix <- function(x = matrix()) {
    if(!is.matrix(x)) stop("x must be a matrix")
    inv <- NULL
    set <- function(y) {
        x <<- y
        inv <<- NULL
    }
    get <- function() x
    setInv <- function(i) inv <<- i
    getInv <- function() inv
    list(set = set, get = get, setInv = setInv, getInv = getInv)
}


## Write a short comment describing this function
## This function computes the inverse of the special "matrix" returned by makeCacheMatrix above. 
## If the inverse has already been calculated (and the matrix has not changed), 
## then the cachesolve should retrieve the inverse from the cache.
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    inv <- x$getInv()
    if(!is.null(inv)) {
        message("getting cached data")
    }
    data <- x$get()
    inv <- solve(data)
    x$setInv(inv)
    inv
}
