library(data.table)

a <- 55
dummy <- 10
some_data_table <- data.table(a = 1:5, b = 6:10)
some_data_table[, c := a + 1]
some_data_table[, joker := dummy + 1]
print(some_data_table)
 