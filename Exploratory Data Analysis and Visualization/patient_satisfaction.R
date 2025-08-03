# Ungraded Lab: Patient Satisfaction Analysis

# Load required library
library(ggplot2)

# Load the dataset
patient_data <- read.csv("healthcare_6.csv")

# ================================================
# Activity 1: Exploring Relationships Between Variables
# ================================================

# Create a scatter plot to visualize the relationship between Age and MedicalCost.
# Calculate the correlation coefficient between these two variables.
# Interpret the results to determine the strength and direction of the relationship.

# Example
# ggplot(my_data, aes(x = VarX, y = VarY)) +
#   geom_point() +
#   labs(title = "Variable X vs. Variable Y",
#        x = "Variable X",
#        y = "Variable Y")

# cor(my_data$VarX, my_data$VarY)


# Try It Out: Explore whether medical cost relates to satisfaction level.

# Steps
# Create a scatter plot with MedicalCost on the x-axis and SatisfactionLevel on the y-axis.
# Use color to represent different satisfaction levels.

plot_1 <- # <YOUR CODE HERE>
print(plot_1)

# Interpret any visible patterns.
# YOUR INTERPRETATION

# ================================================
# Activity 2: Analyzing Variables over Categories
# ================================================

# Choose an appropriate plot (box plot or violin plot) to compare MedicalCost across Condition.
# Interpret the central tendencies and variability.

# Example
# ggplot(patient_data, aes(x = TreatmentType, y = SatisfactionLevel, fill = TreatmentType)) +
#   geom_boxplot() +
#   labs(title = "Satisfaction Level by Treatment Type", x = "Treatment Type", y = "Satisfaction Level")

# ggplot(patient_data, aes(x = TreatmentType, y = SatisfactionLevel, fill = TreatmentType)) +
#   geom_violin() +
#   labs(title = "Satisfaction Level Distribution by Treatment Type", x = "Treatment Type", y = "Satisfaction Level")

# Try It Out: Explore how MedicalCost differs by Condition.

# Steps
# Choose an appropriate plot (box plot or violin plot) to compare MedicalCost across Condition.
# Create the plot with clear labels and titles.
plot_2 <- # <YOUR CODE HERE>
print(plot_2)


# Interpret the differences in medical costs among conditions.
# YOUR INTERPRETATION

# ================================================
# Activity 3: Exploring Relationships Between Variables
# ================================================

# Create a contingency table to observe the frequency of each Condition and TreatmentType combination.
# Visualize the data using a stacked bar chart to show proportions.
# Interpret any notable associations.

# Example
# contingency_table <- table(patient_data$Condition, patient_data$TreatmentType)
# print(contingency_table)

# ggplot(patient_data, aes(x = Condition, fill = TreatmentType)) +
#   geom_bar(position = "fill") +
#   labs(title = "Treatment Type Distribution by Condition", x = "Condition", y = "Proportion")

# Try It Out: Show satisfaction level distribution across conditions.

# Steps
# Create a stacked bar chart to show the proportion of each SatisfactionLevel within each Condition. 
# Ensure the chart has clear labels and a descriptive title.
plot_3 <- # <YOUR CODE HERE>
print(plot_3)

# Interpret any patterns or trends observed.
# YOUR INTERPRETATION

# ================================================
# Activity 4: Correlation Between Variables
# ================================================

# Convert SatisfactionLevel to a numerical scale (e.g., Low = 1, Medium = 2, High = 3).
# Create a scatter plot with Age on the x-axis and numerical SatisfactionLevel on the y-axis.
# Calculate the correlation coefficient between Age and numerical SatisfactionLevel.
# Interpret the strength and direction of the relationship.

# Example
# patient_data$SatisfactionNumeric <- as.numeric(factor(patient_data$SatisfactionLevel, levels = c("Low", "Medium", "High")))

# ggplot(patient_data, aes(x = Age, y = SatisfactionNumeric)) +
#   geom_point() +
#   labs(title = "Age vs. Satisfaction Level", x = "Age", y = "Satisfaction Level (Numeric)")

# cor(patient_data$Age, patient_data$SatisfactionNumeric)

# Try It Out: Investigate correlation between MedicalCost and Satisfaction.

# Steps
# Use the numerical SatisfactionLevel created earlier.
# Create a scatter plot with MedicalCost on the x-axis and numerical SatisfactionLevel on the y-axis.
plot_4 <- # <YOUR CODE HERE>
print(plot_4)

# Calculate the correlation coefficient between MedicalCost and numerical SatisfactionLevel.
# <YOUR CODE HERE>

# Interpret the results.
# YOUR INTERPRETATION HERE