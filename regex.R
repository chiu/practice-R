t1 <- c('this.text', 'next.text')

# capitalize first letter
t2 <- sub('^(\\w?)', '\\U\\1', t1, perl=T)

# remove points and capitalize following letter
subbed <- gsub('\\.(\\w?)', '\\U\\1', t2, perl=T)
# [1] "ThisText" "NextText"

pse_cols <- c("ADDRESS" , "APPROXIMATE_LATITUDE" , "APPROXIMATE_LONGITUDE" , "AREA_IN_SQUARE_METRES" , "CITY"  , "COUNTRY" , "DESCRIPTION" , "ENROLLMENT_DATE" , "ESTIMATED_AREA" , "GROUP_ID"  )
