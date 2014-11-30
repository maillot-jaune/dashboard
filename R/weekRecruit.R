weekRecruit <- function(x){

# library(RMySQL)

  sql <- paste(scan('/home/dash/script/select_weekRecruit.SQL', 
#  sql <- paste(scan('/home/stefan/Desktop/select_weekRecruit.SQL', 
      what = 'character', 
      quiet = TRUE), 
    collapse = ' ')
  drv <- dbDriver('MySQL')
  con <- dbConnect(drv, 
    user = 'root', 
    host = '192.168.1.254', 
    dbname = 'dbSt', 
    password = 'four4u')
  dbGetQuery(con, 'SET NAMES "utf8"')
  res <- dbSendQuery(con, sql)
  d <- fetch(res, n = -1)
  mysqlCloseConnection(con)
  
  par(bg = '#333333',
    mar = c(3, 1, 2, 1) # bottom, left, top, right
  )
  
  plot(d[ ,3],
    type='l',
    ann = FALSE,
    axes = FALSE,
    lwd = 8,
    col= '#33cccc'
  )
  
  axis(1,
    mgp = c(0, 3, 0), # label, tick-mark label, tick-mark
    las = 1,
    cex.axis = 2,
    cex.font = 2,
    col = '#cccccc',
    lwd = 8,
    col.axis = '#cccccc',
    at = axTicks(1),
    labels = substring(d[ ,2], 1, 2)
  )
  
  points(d[ ,3], 
    cex = 3,
    pch = 21,
    lwd = 8,
    col = '#33cccc',
    bg = '#333333',
    xpd = TRUE
  )
  
  text(x = 1:7, 
    y = d[ ,3],
    cex = 2,
    font = 2,
    labels = d[ ,3], 
    xpd= TRUE,
    col = '#cccccc',
    pos = 3
  )
  
}