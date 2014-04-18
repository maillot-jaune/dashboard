testr <- function(x){
#  y <- x + pi
#  return(y)
  d <- tryCatch({

#          load('/home/stefan/Desktop/twitter_auth.Rdata')
          load('../../../../../../../home/stefan/Desktop/twitter_auth.Rdata')

    }, warning = function(w) {
      d <- paste('Warning: <pre>', w, '\n\n\n', getwd(), '\n\n\n' ,sessionInfo())
    }, error = function(e) {
      d <- paste('Error:', e)
    }, finally = {
      d <- 'Unknown error...'
    })
  return(d)
}