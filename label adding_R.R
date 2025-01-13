# Create Sample data
data <- data.frame(
  respondent = 1:5,
  gender = c(1, 2, 2, 1, 1),
  age_group = c(1, 2, 3, 2, 1)
)
# Convert numeric categories to factors with labels
data$gender <- factor(data$gender, 
                      levels = c(1, 2), 
                      labels = c("Male", "Female"))

data$age_group <- factor(data$age_group, 
                         levels = c(1, 2, 3), 
                         labels = c("18-25", "26-45", "46 and above"))
print(data)
