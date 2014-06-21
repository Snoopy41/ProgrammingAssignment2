## Two functions that cache the inverse of the matrix

## Creates a cache matrix that contains an object which can cache itself

makeCacheMatrix <- function(x = matrix()) {

## Create an empty vector

v<-NULL

## Set the value of the matrix

set<-function(matrix) {
m<<-matrix
v<<-NULL
}

## Get the value of the matrix

get<-function() m

## Set the inverse of the matrix

set_inverse<-function(inverse) {
v<<-inverse
}

## Get the value of the inverse function

get_inverse<-function(){
v
}

## List of the functions used

list(set = set, get = get,
         set_inverse = set_inverse,
         get_inverse = get_inverse)
}




##  Calculate the inverse value of the special 'matrix' created with makeCacheMatrix function above

cacheSolve <- function(x, ...) {
        

## Get matrix that is the inverse of 'x'

  m <- x$getInverse()

## Return the inverse if its already been calculated

if( !is.null(m) ) {
message("getting cached data")
return(m)
}

## Get the matrix from our object

data <- x$get()

## Calculate the inverse using matrix multiplication

m <- solve(data) %*% data

## Set the inverse to the object and return the matrix

x$setInverse(m)
m
}

