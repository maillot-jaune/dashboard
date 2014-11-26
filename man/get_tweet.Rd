\name{get_tweet}
\alias{get_tweet}
\title{Get tweets from \code{@si_petersson} timeline}
\usage{
  get_tweet(x)
}
\arguments{
  \item{x}{The number of tweets to get}
}
\description{
  Get the latest tweet from @si_petersson's timeline. Please note that the authentication file (e.g. .Rdata file) needs to be added to AppArmor custom rules. On Debian boxes, add the line dQuote{/path/to/twitter_auth.Rdata r,} to file \dQuote{/etc/apparmor.d/opencpu.d/custom} and reload AppArmor. I tend to place the autentication image out of reach, ie in \dQuote{/etc/}.  
}