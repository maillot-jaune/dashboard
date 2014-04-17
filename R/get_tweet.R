get_tweet <- function(x){
  
  load('~/Desktop/twitter_auth.Rdata')
  
  registerTwitterOAuth(twitCred)
  
  d <- twListToDF(homeTimeline(n = x))
  d <- d[1, c(1, 11)] # 1=txt 11=usr
  return(d)
}