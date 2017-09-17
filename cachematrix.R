## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
## Init inverse property
  m<-NULL
  
  ## Set the matrix
  set<-function(y){
    x<<-y
    m<<-NULL
  }
  ## Get the matrix
  get <- function() {
    ## Return the matrix
    x
  }
  ## Set the inverse of the matrix
  setInverse <- function(inverse) {
    i <<- inverse
  }
  ## Get the inverse of the matrix
  getInverse <- function() {
  ## Return the inverse
    m
  }
  ## Return a list of the methods
  list(set = set, get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return the inverse of x

        m <- x$getInverse()
        ## Return inverse if its  set
        if( !is.null(m) ) {
          message("getting cached data")
          return(m)
        }
        ## Get the matrix from object
        data <- x$get()
        ## Calculate the inverse using matrix multiplication
        m <- solve(data) %*% data
        ## Set the inverse to the object
        x$setInverse(m)
        ## Return  matrix
        m      
}
