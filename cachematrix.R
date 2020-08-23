## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
         i <- NULL
  set <- function(y) {
    x <<- y
    i <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) i <<- inverse
  getinverse <- function() i
  list(set = set,
       get = get,
       setinverse = setinverse,
       getinverse = getinverse)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        i <- x$getinverse()
  if (!is.null(i)) {
    message("getting cached data of the matrix")
    return(i)
  }
  calc <- x$get()
  i <- solve(calc, ...)
  x$setinverse(i)
  i
  
}
my_matrix <- MakeCacheMatrix(matrix(1:4, 2, 2))
my_matrix$get()
my_matrix$getinverse()
cacheSolve(my_matrix)
cacheSolve(my_matrix)
my_matrix$getinverse()
my_matrix$set(matrix(c(2, 2, 1, 4), 2, 2))
my_matrix$get()
my_matrix$getinverse()
cacheSolve(my_matrix)
cacheSolve(my_matrix)
my_matrix$getinverse()


