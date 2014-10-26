## Este comentario servira para ver si lo estoy salvando en el Repositorio
## Adecuado

## Write a short comment describing this function
## This is the Assigment 2 for R programming course
## Objective: To calculate the inverse of matrix in cache
## Modify by Edith Reyes Loya
##
## The makeCacheMatrix function creates a list of functions to set and get the
## matrix, and to set and get de inverse of the certanly matrix to be given 

makeCacheMatrix <- function(x = matrix()) {
    m<-NULL
    set<-function(y) {
        x<<-y
        m<<-NULL
    }
    get<-function() x
    setsolve<-function(solve) m<<-solve
    getsolve<-function() m
    list(set=set,get=get,setsolve=setsolve,getsolve=getsolve)   
}


## Write a short comment describing this function
## This function computes the inverse of matrix that was returned by
## the function makeCacheMatrix
## If the inverse of matrix was already calculated then return the
## value of the inverse from the cache

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    m<-x$getsolve()
    if(!is.null(m)){
        message("getting cache data")
        return(m)
    }
    data <- x$get()
    m<-solve(data, ...)
    x$setsolve(m)
    m
}
