testr <- function(x){
#  y <- x + pi
#  return(y)
  d <- tryCatch({
      
#      local({
#          load('/home/stefan/Desktop/twitter_auth.Rdata')
#        })
      d <- x + pi
      
    }, warning = function(w) {
      # warning-handler-code
      #cat('Warning')
      d <- 'Warning'
    }, error = function(e) {
      # error-handler-code
      #cat('Error, somethin went wrong\n')
      d <- 'Error'
    }, finally = {
      # cleanup-code
      #cat('Nothin to do, set d to arbitrary string \n')
      d <- 'Clean up!'
    })
  
  return(d)
}