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
range(df_polls$ABC_poll)
range(df_polls$CBS_poll)

## Add a column for difference between CBS and ABC
df_polls$Diff <- df_polls$CBS_poll - df_polls$ABC_poll

## View new data frame 
head(df_polls)

## Install ggplot2 package
install.packages("ggplot2")

## Load ggplot2
library(ggplot2)

## Generate plot
df_polls$Name <- factor(df_polls$Name, levels = df_polls$Name)

plot <- ggplot(df_polls, aes(x = Name, y = Diff)) +
  geom_col() +
  labs(title = "CBS vs ABC Poll Difference by Candidate",
       x = "Candidate",
       y = "CBS - ABC (percentage points)") +
  theme_minimal(base_size = 12)

## Print plot
print(plot)
