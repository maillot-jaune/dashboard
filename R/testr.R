testr <- function(x){
#  y <- x + pi
#  return(y)
  tryCatch({
      
      local({
          load('/home/stefan/Desktop/twitter_auth.Rdata')
        })
      
    }, warning = function(w) {
      # warning-handler-code
      #cat('Warning')
    }, error = function(e) {
      # error-handler-code
      #cat('Error, somethin went wrong\n')
    }, finally = {
      # cleanup-code
      #cat('Nothin to do, set d to arbitrary string \n')
      d <- 'Clean up and tweet me!'
    })
  
  return(d)
}