# I have used the solve function simmilar to the example just to underdstand how this works. I picked this function strictley because it
# stated that if I leave b varible blank it will give me the inverse of a. I have included the help explination below the two functions.

makeCacheMatrix <- function(x = matrix()) {  m<-NULL
set<-function(y){
  x<<-y
  m<<-NULL
}
get<-function() x
setmatrix<-function(solve) m<<- solve
getmatrix<-function() m
list(set=set, get=get,
     setmatrix=setmatrix,
     getmatrix=getmatrix)

}



cacheSolve <- function(x = matrix(), ...) {
        ## Return a matrix that is the inverse of 'x'
  m<-x$getmatrix()
  if(!is.null(m)){
    message("getting cached data")
    return(m)
  }
  matrix<-x$get()
  m<-solve(matrix, ...)
  x$setmatrix(m)
  m
}




