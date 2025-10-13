# Choose and download data set
data("mtcars")

# Show first few rows
cat("First 6 rows:\n")
print(head(mtcars), row.names = TRUE)

# Describe structure
cat("\nStructure:\n")
str(mtcars)

# Choose a couple of base generic functions: print(), summary(), plot()
cat("\nSummary(mtcars):\n")
print(summary(mtcars))

# Create an S3 object
s3_obj <- list(name = "Myself", age = 29, GPA = 3.5)
class(s3_obj) <- "student_s3"

# Generic function dispatch for S3 object
print.student_s3 <- function(x, ...) {
  cat(sprintf("<student_s3> name=%s | age=%s | GPA=%.2f\n", x$name, x$age, x$GPA))
}

print(s3_obj)

# Create an S4 class and object 
setClass("student_s4",
         slots = c(name = "character", age = "numeric", GPA = "numeric"))
s4_obj <- new("student_s4", name = "Myself", age = 29, GPA = 3.5)

# Generic function dispatch for S4 class and object
setMethod("show", "student_s4", function(object) {
  cat(sprintf("<student_s4> name=%s | age=%s | GPA=%.2f\n", object@name, object@age, object@GPA))
})

s4_obj
