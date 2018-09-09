makeCacheMatrix <- function(x =matrix()) {
       
 i <- NULL
       
 set <- function(y) {
               
 x <<- y
               
 i <<- NULL
      
  }
        
get <- function() x       
setsolve <- function(solve) i<<- inverse  
getsolve<- function() i     
  list(set = set, get = get,
           
  setsolve = setsolve,
           
  getsolve = getsolve)
}


cacheSolve<- function(x, ...) {
        
i <- x$getsolve()
        
if(!is.null(i)) {
  
              message("getting cached data")
                return(i)
       
 }
        
data <- x$get()
        
i <- solve(data, ...)
       
x$setdata(i)
        
i
}









