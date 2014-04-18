get_tweet <- function(x){
  # 
  # Get the twitter auth file. This is just @si_petersson
  # authentication. So the tweet returned by this function 
  # will be the latest one in @si_petersson timeline.
  local({
      load('/home/stefan/Desktop/twitter_auth.Rdata')
    })
  #load('/home/stefan/Desktop/twitter_auth.Rdata')
  #
  # Authentcate...
  registerTwitterOAuth(twitCred)
  #
  # Clean up
  d <- twListToDF(homeTimeline(n = x))
  d <- d[1, 1] # 1=txt 11=usr
  d <- as.character(d)
  #
  # Return a character string
  return(d)
}