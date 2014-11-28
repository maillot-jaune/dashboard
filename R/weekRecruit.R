weekRecruit <- function(){

#  library(RMySQL)

#  sql <- paste(scan('/home/dash/script/select_weekRecruit.SQL', 
#  sql <- paste(scan('/home/stefan/Desktop/select_weekRecruit.SQL', 
#      what = 'character', 
#      quiet = TRUE), 
#    collapse = ' ')
#  drv <- dbDriver('MySQL')
#  con <- dbConnect(drv, 
#    user = 'root', 
#    host = '192.168.1.254', 
#    dbname = 'dbSt', 
#    password = 'four4u')
#  dbGetQuery(con, 'SET NAMES "utf8"')
#  res <- dbSendQuery(con, sql)
#  d <- fetch(res, n = -1)
#  mysqlCloseConnection(con)
  
#  par(mar = c(2, 0, 2, 0))
  
#  plot(d[ ,3],
  plot(c(12,43,23,34,23,43,31),
    type='l',
    ann = FALSE,
    axes = FALSE,
    lwd = 5,
    col= '#33cccc'
  )
  
  axis(1, 
    las = 1,
    col = '#cccccc',
    lwd = 5,
    col.axis = '#cccccc',
    at = axTicks(1),
    labels = substring(d[ ,2], 1, 2)
  )
  
  points(d[ ,3], 
    cex = 2,
    pch = 21,
    lwd = 5,
    col = '#33cccc',
    bg = '#ffffff',
    xpd = TRUE
  )
  
  text(x = 1:7, 
    y = d[ ,3], 
    labels = d[ ,3], 
    xpd= TRUE,
    col = '#cccccc',
    pos = 3
  )
  
}