# Install ggplot2
install.packages("ggplot2")
library(ggplot2)

# Load mpg data set
data("mpg", package = "ggplot2")
  head(mpg)

# Set class as a factor to establish order
mpg_df$class <- as.factor(mpg_df$class)
  
# Scatter plot: displ (x) vs hwy (y)
  plot(mpg_df$displ, mpg_df$hwy,
       main = "Base: Highway MPG vs Engine Displacement",
       xlab = "Engine displacement (L)",
       ylab = "Highway MPG",
       pch  = 19)
  
# Histogram: distribution of hwy
hist(mpg_df$hwy,
      main = "Base: Distribution of Highway MPG",
      xlab = "Highway MPG")

# Install lattice
install.packages("lattice")
library(lattice)

# Box-and-whisker plot: hwy by class
xyplot(hwy ~ displ | class,
       data = mpg_df,
       main = "Lattice: Highway MPG vs Displacement by Class",
       xlab = "Engine displacement (L)",
       ylab = "Highway MPG")

# Scatter with linear trend, colored by class
ggplot(mpg_df, aes(x = displ, y = hwy, color = class)) +
  geom_point() +
  geom_smooth(method = "lm", se = FALSE) +
  labs(title = "ggplot2: Highway MPG vs Displacement by Class")
