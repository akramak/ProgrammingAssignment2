## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  invM <- NULL
  setM <- function(y){
    x <<- y
    invM <<- NULL
  }
  getM <- function() x
  setIM <- function(inv) invM <<- inv
  getIM <- function() invM
  list(setIM = setIM, getM = getM, setIM = setIM, getIM = getIM)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  invM <- x$getIM()
  if(!is.null(invM)){
    message("get cache martix")
    return(invM)
  }
  data <- x$getM()
  invM <- solve(data)
  x$setIM(invM)
  inv      
}





