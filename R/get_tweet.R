get_tweet <- function(x){
  # 
  # Get the twitter auth file. This is just @si_petersson
  # authentication. So the tweet returned by this function 
  # will be the latest one in @si_petersson timeline.
  twitter_authentication <- file(description = '/home/stefan/Desktop/twitter_auth.Rdata', 
    open = 'rb', 
    blocking = TRUE, 
    encoding = getOption('encoding')
  )
  #
  # Load the authentication data image into the current environment
  local({load(twitter_authentication)}) 
  #
  # Authentcate...
  registerTwitterOAuth(twitCred)
  #
  # Fix
  d <- twListToDF(homeTimeline(n = x))
  d <- d[1, 1] # 1=txt 11=usr
  d <- as.character(d)
  
  close(twitter_authentication)
  unlink('/home/stefan/Desktop/twitter_auth.Rdata')
  #
  # Return a character string
  return(d)
}