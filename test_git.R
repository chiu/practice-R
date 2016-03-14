library(data.table)

print("Hello World")
print("How are you?")
some_data_table <- data.table(a=c(1,2,3),b=c("x","y","z"))

print("writing something to test")

print("some more fake lines.")

library('testthat')
a <- 10
expect_equal(a, 10)
expect_equal(a, 10)
comparison <- expect_equal(a, 10)

print('cool beans')