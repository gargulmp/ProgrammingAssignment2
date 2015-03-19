## Assignment: to write a pair of functions that cache the inverse of a matrix
## Function1:This function creates a special "matrix" object tht can cahce its inverse
makeCacheMatrix<-function(m=matrix()){
        ## setting the matrix
        i<-NULL
        set<-function(matrix){
                m<<-matrix
                i<<-NULL
        }
        ## getting the matrix
        get<-function(){
                m
        }
        ## setting the inverse of the matrix
        setInverse<-function(inverse){
                i<<-inverse
        }
        ## getting the inverse of the matrix
        getInverse<-function(){
                i
        }
        ## return list of set's and get's
        list(set=set,get=get,setInverse=setInverse,
             getInverse=getInverse)
}
## Function2: This function computes the inverse of the special "matrix" returned by makeCacheMatrix above. If the inverse has already been calculated (and the matrix has not changed), then the cachesolve should retrieve the inverse from the cache.
cacheSolve<-function(x,...){
        ## return inverse of m
        m<-x$getInverse()
        ## return inverse if already set
        if(!is.null(m)){
                message("getting cached data")
                return(m)
        }
        ## get the matrix
        data<-x$get()
        ## calculate inverse
        m<-solve(data)%*%data
        ## set the inverse of m
        xset$Inverse(m)
        ## return the matrix
        m
}