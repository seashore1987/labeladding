# Step 1: Create a data frame named 'data' with three variables: respondent, gender, and age_group.
data <- data.frame(
  respondent = 1:5,  # Respondent IDs: 1 to 5
  gender = c(1, 2, 2, 1, 1),  # Gender: 1 for Male, 2 for Female
  age_group = c(1, 2, 3, 2, 1)  # Age groups: 1 (18-25), 2 (26-45), 3 (46 and above)
)

# Step 2: Convert the numeric 'gender' variable into a factor with descriptive labels.
data$gender <- factor(data$gender, 
                      levels = c(1, 2),  # Define the numeric levels
                      labels = c("Male", "Female"))  # Assign descriptive labels to the levels

# Step 3: Convert the numeric 'age_group' variable into a factor with descriptive labels.
data$age_group <- factor(data$age_group, 
                         levels = c(1, 2, 3),  # Define the numeric levels
                         labels = c("18-25", "26-45", "46 and above"))  # Assign descriptive labels

# Step 4: Print the final data frame to display the labeled variables.
print(data)  # Displays the dataset with factors showing labels instead of numeric codes
