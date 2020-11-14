## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  inversion <- NULL
  set <- function(my_matrix) {
    x <<- my_matrix
    invertion <<- NULL
  }
  get <- function() x
  set_inverse <- function(inversed_matrix) inversion <<- inversed_matrix
  get_inverse <- function() inversion
  list(set = set, get = get,
       setinverse = set_inverse,
       getinverse = get_inverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  inversion <- x$getinverse()
  if(!is.null(inversion)) {
    message("getting cached data")
    return(inversion)
  }
  data <- x$get()
  inversion <- solve(data, ...)
  x$setinverse(inversion)
  inversion 
  
        ## Return a matrix that is the inverse of 'x'
}

x<-matrix(c(4,2,7,6),2,2)
xx <- makeCacheMatrix(x)

cacheSolve(xx)
cacheSolve(xx)

