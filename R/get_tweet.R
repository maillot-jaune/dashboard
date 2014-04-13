# Test R-file
# test
get_tweet <- function(){
  library(twitteR)

  load('~/Desktop/twitter_auth.Rdata')
  registerTwitterOAuth(twitCred)
  
  d <- twListToDF(homeTimeline(n = 1))
  d <- d[1, 1]
  return(d)
}