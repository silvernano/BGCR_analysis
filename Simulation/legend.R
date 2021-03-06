
##################################################################################################
##################################################################################################
####----function to plot the legend of the PMAP plot----####

legend_col = function(col, lev){
  
  opar = par
  n = length(col)
  bx = par("usr")
  box_cx = c(bx[2] + (bx[2] - bx[1]) / 1000, bx[2] + (bx[2] - bx[1]) / 1000 + (bx[2] - bx[1]) / 50)
  box_sy = (bx[4] - bx[3]) / n
  box_cy = c(bx[3], bx[3])  
   
  
  xx = rep(box_cx, each = 2)
  par(xpd = TRUE)
  
  for(i in 1:n){
    yy = c(box_cy[1] + (box_sy * (i - 1)), box_cy[1] + (box_sy * (i)),
           box_cy[1] + (box_sy * (i)), box_cy[1] + (box_sy * (i - 1)))
    polygon(xx, yy, col = col[i], border = col[i])
  }
   
  par(new = TRUE)
  plot(0, 0, type = "n",
       ylim = c(min(lev), max(lev)),
       yaxt = "n", ylab = "",
       xaxt = "n", xlab = "",
       frame.plot = FALSE)
  axis(side = 4, las = 2, tick =FALSE, line = 0.5, cex.axis=0.7)
  par = opar
}


##################################################################################################
##################################################################################################



