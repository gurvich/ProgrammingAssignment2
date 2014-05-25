makeCacheMatrix=function(x=numeric()) {
    m=NULL # initialize matrix m
    set=function(y) { # set function y
        x<<-y
        m<<-NULL
    }
    get=function() x # view original matrix
    setsolve=function(solve) m<<-solve # calculate inverse of matrix
    getsolve=function() m # view inverse of matrix
    list(set=set,get=get,setsolve=setsolve,getsolve=getsolve) # list commands
}
