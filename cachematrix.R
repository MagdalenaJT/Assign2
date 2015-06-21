## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## Function creates a matrix that could cash it inverse

makeCacheMatrix <- function(x = matrix()) {
  inverse <- NULL
  set <- function(x) {
    meatrix <<- x;
    inverse <<- NULL;
  }
  get <- function() return(meatrix);
  setinv <- function(inv) inverse <<- inv;
  getinv <- function() return(inverse);
  return(list(set = set, get = get, setinv = setinv, getinv = getinv))
}

## Write a short comment describing this function

## Function computes the inverse of matrix. If the matrix has been calculated then it could retrive inverse form cache.

cacheSolve <- function(meatrix, ...) {
        ## Return a matrix that is the inverse of 'x'
  inverse <- meatrix$getinv()
  if(!is.null(inverse)) {
    message("Getting from cache")
    return(inverse)
  }
  data <- meatrix$get()
  inverse <- solve(data, ...)
  meatrix$setinv(inverse)
  return(inverse)
  }
