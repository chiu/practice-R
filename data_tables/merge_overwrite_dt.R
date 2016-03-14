 d1 <- data.frame(x=1:4, a=2:5, b=c(3,4,5,NA))

 d2 <- data.frame(x=1:4, b=c(6,7,8,9), c=11:14)
 d3 <- within(merge(d1, d2, by="x"), {b <- ifelse(is.na(b.x),b.y,b.x); b.x <- NULL; b.y <- NULL})