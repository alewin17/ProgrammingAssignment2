# inverse of var x in a matrix
cacheSolve <- function(x, ...) {
  inv <- x$getInverse() 
  if (!is.null(inv)) {
    return(inv)
  }
  mat <- x$get()
  inv <- solve(mat, ...)
  x$setInverse(inv)
  inv
}