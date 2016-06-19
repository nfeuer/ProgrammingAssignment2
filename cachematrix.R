## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  
  inver = NULL;
  set = function(y) {
    x <<- y
    inver = NULL;
  }
  get = function() x
  setinver = function(inverse) inver <<- inverse
  getinver = function() inver
  list(set = set, get = get, setinver = setinver, getinver = getinver)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  
}