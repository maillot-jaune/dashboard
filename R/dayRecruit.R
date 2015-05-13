dayRecruit <- function(){

#library(RMySQL)
  sql <- paste(scan('/home/dash/script/select_dayRecruit.SQL', 
#  sql <- paste(scan('/home/stefan/Desktop/select_dayRecruit.SQL', 
      what = 'character', 
      quiet = TRUE), 
    collapse = ' ')
  drv <- dbDriver('MySQL')
  con <- dbConnect(drv, 
    user = 'root', 
    host = '192.168.1.254', 
    dbname = 'dbSt', 
    password = 'four4u')
# dbGetQuery(con, 'SET NAMES "utf8"')
  res <- dbSendQuery(con, sql)
  d <- fetch(res, n = -1)
  #mysqlCloseConnection(con)
  dbDisconnect(con)
  
  par(bg = '#333333',
    mar = c(3, 1, 2, 1) # bottom, left, top, right
  )
  
  
  d <- merge(data.frame(hour = 0:24), d, by.x = 'hour', all.x = TRUE)  
  #d[ ,2] <- ifelse(is.na(d[ ,2]), 0, d[ ,2])
  
  plot(approx(d[ ,3]),
    xlim = c(1, 24),
    type='l',
    ann = FALSE,
    axes = FALSE,
    lwd = 8,
    col= '#33cccc'
  )
  
  axis(1, font = 2, col = '#cccccc', at=c(0,6,12,18,24))
   
#  axis(1,
#    mgp = c(0, 1.5 , 0), # Tick label distance from axis, label, tick-mark label, tick-mark
#    las = 1,
#    cex.axis = 2,
#    font = 2,
#    col = '#cccccc',
#    lwd = 8,
#    col.axis = '#cccccc',
#    at = seq(from = 1, to = 23, by = 3),
#    labels = formatC(seq(from = 1, 
#        to = 23, 
#        by = 3), 
#      width = 2, 
#      format = 'd', 
#      flag = '0')
#  )
  
  points(d[ ,3], 
    cex = 3,
    pch = 21,
    lwd = 8,
    col = '#33cccc',
    bg = '#333333',
    xpd = TRUE
  )
  
  text(x = 1:dim(d)[1], 
    y = d[ ,3],
    cex = 2,
    font = 2,
    labels = d[ ,3], 
    xpd = TRUE,
    col = '#cccccc',
    pos = 3
  )    
}