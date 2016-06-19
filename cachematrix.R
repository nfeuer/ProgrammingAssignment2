## Save cached versions to be able to complete subsequent calculations faster

## Creates a new object that is a matrix that can be cahed

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



## This function checkes for cached inverse, otherwise calculates it

cacheSolve <- function(x, ...) {
  inver = x$getinver()
  if (!is.null(inver)){
    message("retrieving cache")
    return(inver)
  }
  data <- x$get()
  inver <- solve(data, ...)
  x$setinver(inver)
  return(inver)
}

## Done