## Put comments here that give an overall description of what your
## functions do
# NOTE - THIS file has both functions required
## Write a short comment describing this function
# BOTH THE FUNCTIONS ARE HEAVILY DERIVED FROM THE EXAMPLE PROVIDED####
#cachematrix is a function which has recursively 4 functions. Each of the
# function can in turn be retrieved by using the "$" variable

cachematrix <- function(x =matrix(numeric())) {
  m <- NULL
    set <- function(y) {
      x <<- y
    m <<- NULL
      }
      get <- function() x
  setinverse <- function(inv) m <<- inv
    getinverse <- function() m
  }




## Write a short comment describing this function
# The below function basically inverses a valid matrix using solve 
# command if the data is not available. However if the inverse data
# is available in memory it will simply get from cache (it will go to
# not null else section of the if code
# The key word is solve function
###############
cacheSolve <- function(x ) {
  m <- x$getinverse()
   if(!is.null(m)) {
       message("getting cached data")
    return(m)
      }
       data <- x$get()
  m <- solve(data)
   x$setinverse(m)
	      m
    }



######
