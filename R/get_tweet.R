get_tweet <- function(x){
  
  load('~/Desktop/twitter_auth.Rdata')
  
  registerTwitterOAuth(twitCred)
  
  d <- twListToDF(homeTimeline(n = x))
  d <- d[1, 1] # 1=txt 11=usr
  d <- as.character(d)
  return(d)
}