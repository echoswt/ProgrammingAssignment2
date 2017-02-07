## makeCacheMatrix is a function that returns a list of functions
## the function is to store a matrix and a cached value of the inverse of the matrix
makeCacheMatrix <- function(x = numeric()) {
 matinv <- NULL
 set <- function(y) {
         x <<- y
         matinv <<- NULL
     }
 get <- function() x
 setinv <- function(inverse) matinv <<- inverse
 getinv <- function() matinv
 list(set = set, get = get, setinv = setinv, getinv = getinv)
 }

## the function is to calculate the inverse of a "special" matrix created with makeCacheMatrix
cacheSolve <- function(x, ...) {
 matinv<-x$getinv()
 if(!is.null(matinv)){
 	message("getting cached data")
 	return(inv)
 }
 data<-x$get()
inv<-solve(data,...)
x$setinv(inv)
inv
}

