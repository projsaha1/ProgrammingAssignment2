## Put comments here that give an overall description of what your
## functions do

## Caches the matrix and its inverse. 

makeCacheMatrix <- function(x = matrix()) {
	inv <- NULL
	set <- function(y){
		x <<- y
		inv <<- NA	
	}
	get <- function () x
	getInv <- function () inv
	setInv <- function (i){
		inv <<- i
	}
	list(get = get, set = set, getInv = getInv, setInv = setInv)
}


## Calculates the matrix inverse and caches it

cacheSolve <- function(x, ...) {
      ## Return a matrix that is the inverse of 'x'
	inverse <- x$getInv()
	if(is.null(inverse )){
		inverse <- solve(x$get(),...)
		x$setInv(inverse)
	} else {
		print("Getting from cache")
		inverse <- x$getInv()
	}
	inverse
}




