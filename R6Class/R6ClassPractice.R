# https://cran.r-project.org/web/packages/R6/vignettes/Introduction.html

library(R6)

Person <- R6Class(
  "Person",
  public = list(
    name = NA,
    hair = NA,
    initialize = function(name, hair) {
      if (!missing(name))
        self$name <- name
      if (!missing(hair))
        self$hair <- hair
      self$greet()
    },
    set_hair = function(val) {
      self$hair <- val
    },
    greet = function() {
      cat(paste0("Hello, my name is ", self$name, ".\n"))
    }
  )
)



Queue <- R6Class("Queue",
                 public = list(
                   initialize = function(...) {
                     for (item in list(...)) {
                       self$add(item)
                     }
                   },
                   add = function(x) {
                     private$queue <- c(private$queue, list(x))
                     invisible(self)
                   },
                   remove = function() {
                     if (private$length() == 0) return(NULL)
                     # Can use private$queue for explicit access
                     head <- private$queue[[1]]
                     private$queue <- private$queue[-1]
                     head
                   }
                 ),
                 private = list(
                   queue = list(),
                   length = function() base::length(private$queue)
                 )
)

q <- Queue$new(5, 6, "foo")


Numbers <- R6Class("Numbers",
                   public = list(
                     x = 100
                   ),
                   active = list(
                     x2 = function(value) {
                       if (missing(value)) return(self$x * 2)
                       else self$x <- value/2
                     },
                     rand = function() rnorm(1)
                   )
)

n <- Numbers$new()
n$x
#> [1] 100