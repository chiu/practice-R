 d1 <- data.frame(x=1:4, a=2:5, b=c(3,4,5,NA))

 # d2 <- data.frame(x=1:4, b=c(6,7,8,9), c=11:14)
 
 d2 <- data.frame(x=3:4, a = 4:5, b = c(99,77))
 # i want d2's b column to overwrite d1's
 
 # d3 <- within(merge(d1, d2, by="x"), {b <- ifelse(is.na(b.x),b.y,b.x); b.x <- NULL; b.y <- NULL})
 
 # d3 <- merge(d1, d2, by = 'x', all.x = TRUE)
 
 
 # d2_overwrite_d1 <- rbind(d1, d2)
 
 stuff_not_in_d2_but_in_d1  <- d1[!(d1$x %in% d2$x),]
 
 d2_overwrite_d1 <- rbind(d2, stuff_not_in_d2_but_in_d1)
 