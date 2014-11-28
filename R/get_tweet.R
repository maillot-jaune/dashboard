get_tweet <- function(x){
  #
  # Pre-define. This is actullay loaded from 
  # "twitter_auth.Rdata", but this prevents a warning 
  # during build.
  twitCred = NULL
  # 
  # Get the twitter auth file. This is just @si_petersson
  # authentication. So the tweet returned by this function 
  # will be the latest one in @si_petersson timeline.
  twitter_authentication <- file(description = '/etc/twitter_auth.Rdata', 
    open = 'rb', 
    blocking = TRUE, 
    encoding = getOption('encoding')
  )
  # 
  # Load the authentication data image into the current 
  # environment
  load(twitter_authentication)
  #
  # Authentcate...
  registerTwitterOAuth(twitCred)
  #
  # Fix
  d <- twListToDF(homeTimeline(n = x))
  d <- d[1, c(11, 1)] # 1=txt 11=usr
  d <- as.character(d)
  #
  # Close the file connection
  close(twitter_authentication)
  #
  # Return the latest tweet
  return(d)
}