# Choose 'Assignment 6 data' file interactively
student6 <- read.table(file.choose(), header = TRUE, sep = ",", stringsAsFactors = FALSE)

# Load plyr
library(plyr)

# Compute mean of grade by sex
gender_mean <- ddply(
  student6,
  "Sex",
  summarise,
  GradeAverage = mean(Grade, na.rm = TRUE)
)
print(gender_mean)

# Write grouped means to a tab-delimited text file
write.table(
  gender_mean,
  file = "gender_mean.txt",
  sep  = "\t",
  row.names = FALSE
)
cat("Wrote: gender_mean.txt\n")

# Filter names containing 'i' or 'I'
i_students <- subset(
  student6,
  grepl("i", Name, ignore.case = TRUE)
)
print(head(i_students, 10))

# Extract just the names to CSV
write.csv(
  i_students$Name,
  file      = "i_students.csv",
  row.names = FALSE,
  quote     = FALSE
)
cat("Wrote: i_students.csv\n")

# Save the full filtered data frame to CSV
write.csv(
  i_students,
  file      = "i_students_full.csv",
  row.names = FALSE
)
cat("Wrote: i_students_full.csv\n")

# Confirmation files exist in working directory
targets <- c("gender_mean.txt", "i_students.csv", "i_students_full.csv")
print(data.frame(File = targets, Exists = file.exists(targets)))
getwd()
list.files(pattern = "gender_mean|i_students")
