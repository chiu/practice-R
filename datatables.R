library(data.table)
library(magrittr)


trial_1 <- data.table(a = c(33,73,99,22), b = c('a','b','c', 'e'), d = c('j','j','k','k'))
something <- copy(trial_1)
# something[, cool := paste0(.SD), by = c('d'), .SDcols = 'a']
something[, cool := paste0(.SD), by = c('d'), .SDcols = c('a', 'b')] %>% print
