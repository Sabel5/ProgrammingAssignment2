## This function creates a list of three functions that wil allow to
## get the value of the matrix, cache the value of the inverse and then get it back 

makeCacheMatrix <- function(x = matrix()) {
	inverse <- NULL
	get <- function () x
	setinverse <- function(i) inverse <<- i
	getinverse <- function() inverse
	list(get = get, setinverse = setinverse, getinverse = getinverse)
}


## This function checks if the inverse has already been calculated, returns it if it has, calculates it and puts it in cache if it hasn't

cacheSolve <- function(x, ...) {
      inverse <- x$getinverse()
	if(!is.null(inverse)){
		return(inverse)
	}
	inverse <- solve(x$get())
	x$setinverse(inverse)
	inverse
}


