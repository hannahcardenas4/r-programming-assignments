## Stored vector
assignment2 <- c(16, 18, 14, 22, 27, 17, 19, 17, 17, 22, 20, 22)

## Confirmation vector was stored successfully
assignment2

## Corrected myMean function
myMean <- function(assignment2) {
  return(sum(assignment2) / length(assignment2))
}

## Mean value
myMean(assignment2)
