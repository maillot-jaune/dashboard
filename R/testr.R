testr <- function(x){
  p <- plot(x,
    ann = FALSE,
    axes = FALSE
  )
  
  p <- axis(1)
  
  return(p)
}