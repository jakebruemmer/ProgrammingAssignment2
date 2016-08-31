## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
# I wrote this function to do what it's supposed to do

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x # This just returns the object
  solveinverse <- function(solve) m <<- solve
  getinverse <- function() m
  list(get = get, solveinverse = solveinverse, getinverse = getinverse)
}


## Write a short comment describing this function
# comment
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  i <- x$getinverse()
  if(!is.null(i)) {
    message("Already calculated")
    return(i)
  }
  d <- x$get()
  i <- solve(d, ...)
  x$solveinverse(i)
  i
}
