get_tweet <- function(x){
  # 
  # Get the twitter auth file. This is just @si_petersson
  # authentication. So the tweet returned by this function 
  # will be the latest one in @si_petersson timeline.

  tc <- file(description = '/home/stefan/Desktop/twitter_auth.Rdata', 
    open = 'rb', 
    blocking = TRUE, 
    encoding = getOption('encoding')
  )
  
  load(tc)
  
  #local({
  #  load('/home/stefan/Desktop/twitter_auth.Rdata')
  #})
  #load('/home/stefan/Desktop/twitter_auth.Rdata')
  #
  # Authentcate...
  
  tryCatch({
      
      registerTwitterOAuth(twitCred)
      d <- twListToDF(homeTimeline(n = x))
      d <- d[1, 1] # 1=txt 11=usr
      d <- as.character(d)
      
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
 
  #registerTwitterOAuth(twitCred)  
  #
  # Clean up
  #d <- twListToDF(homeTimeline(n = x))
  #d <- d[1, 1] # 1=txt 11=usr
  #d <- as.character(d)
  #
  # Return a character string
  return(d)
}