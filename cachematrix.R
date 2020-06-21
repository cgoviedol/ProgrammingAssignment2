## Put comments here that give an overall description of what your
## functions do

## assume that the matrix supplied is always invertible.

makeCacheMatrix <- function(x = matrix()) {
  j <- NULL
  set <- function(y){
    x <<- y
    j <<- NULL
  }
  get <- function()x
  setInverse <- function(inverse) j <<- inverse
  getInverse <- function() j 
  list(set = set, get = get, 
       setInverse = setInverse, 
       getInverse = getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}

## The following function calculates the inverse of the special "matrix"
## created with the above function. However, it first checks to see if 
## the inverse matrix has already been calculated. If so, it gets the
## inverse matrix from the cache and skips the computation. Otherwise,
## it calculates the inverse of the matrix and sets the inverse matrix 
## in the cache via the setinv function.

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  Inv <- x$getinv()
  if(!is.null(Inv)) {
    message("getting cached data")
    return(Inv)
  }
  data <- x$get()
  Inv <- solve(data, ...)
  x$setinv(Inv)
  Inv
}
