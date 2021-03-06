## The functions will alloew us to calculate matrix invers, if we allready calculated it the answer will taken from cache

## makeCacheMatrix counstruct the matrix and define the functions to invers it
## matrix to inverse and cache
makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setsolve <- function(solve) m <<- solve
        getsolve <- function() m
        list(set = set, get = get,
             setsolve = setsolve,
             getsolve = getsolve)
}


## cacheSolce use the makeCacheMatrix function in order to run it, If we allready have the returned object will returned answer from cache
## input makeCahcheMatrix list return the inverse matrix
cacheSolve <- function(x, ...) {
	## Return a matrix that is the inverse of 'x'
        m <- x$getsolve()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- solve(data, ...)
        x$setsolve(m)
        m
}
