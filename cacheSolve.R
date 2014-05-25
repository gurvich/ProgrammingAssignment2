cacheSolve=function(x, ...) {
    m=x$getsolve() # calculate matrix inverse
    if(!is.null(m)) { #see if inverse of matrix exists
        message("getting cached data")
        return(m)
    }
    data=x$get() # view matrix
    m=solve(data, ...) # calculate matrix inverse
    x$setsolve(m) # view inverse of matrix
    m
}
