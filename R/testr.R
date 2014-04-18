testr <- function(x){
#  y <- x + pi
#  return(y)
  d <- tryCatch({

      local({load('/home/stefan/Desktop/twitter_auth.Rdata')})
         
#         load('../../../../../../../home/stefan/Desktop/twitter_auth.Rdata')

    }, warning = function(w) {
      d <- paste('Warning: ', w, getwd())
    }, error = function(e) {
      d <- paste('Error:', e)
    }, finally = {
      d <- 'Unknown error...'
    })
  return(d)
}