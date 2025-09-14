## Create and store vector
Name <- c("Jeb", "Donald", "Ted", "Marco", "Carly", "Hillary", "Bernie")
ABC_poll <- c(4, 62, 51, 21, 2, 14, 15)
CBS_poll <- c(12, 75, 43, 19, 1, 21, 19)

## Combine into a data frame
df_polls <- data.frame(Name, ABC_poll, CBS_poll)

## Inspect data frame
str(df_polls)
head(df_polls)

## Compute mean, median, and range for each poll
mean(df_polls$ABC_poll)
mean(df_polls$CBS_poll)
median(df_polls$ABC_poll)
median(df_polls$CBS_poll)
range(df_polls[, c("ABC_poll","CBS_poll")])

## Add a column for difference between CBS and ABC
df_polls$Diff <- df_polls$CBS_poll - df_polls$ABC_pol

## View new data frame 
head(df_polls)
