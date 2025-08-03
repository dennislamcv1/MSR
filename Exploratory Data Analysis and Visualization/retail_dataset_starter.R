# Ungraded Lab: Advanced Univariate Analysis Techniques

# Install necessary packages (if not already installed)
# install.packages("tidyverse")
# install.packages("lubridate")

# Load required libraries
library(tidyverse)
library(lubridate)
library(ggplot2)      # Extensive plotting capabilities

# Load your dataset
retail_data <- read_csv("retail_5.csv")

# ================================================
# Activity 1: Numerical Variable Analysis
# ================================================

# Compute the mean, median, and standard deviation for Quantity
# Visualize distribution using a histogram
# Identify outliers using a boxplot

# Example
# mean_value <- mean(my_data$NumericVar)
# median_value <- median(my_data$NumericVar)
# sd_value <- sd(my_data$NumericVar)

# ggplot(my_data, aes(x = NumericVar)) +
#   geom_histogram(binwidth = 1, fill = "skyblue", color = "black") +
#   labs(title = "Value Distribution", x = "Value", y = "Frequency")

# ggplot(my_data, aes(y = NumericVar)) +
#   geom_boxplot(fill = "lightblue", color = "black") +
#   labs(title = "Outlier Detection", y = "Value")

# Try It Out #1: You're analyzing product movement to inform stock decisions.
# Steps:
# Calculate summary statistics for Quantity
# <YOUR CODE HERE>

# Use geom_histogram to visualize distribution
# <YOUR CODE HERE>

# Use geom_boxplot to detect outliers
# <YOUR CODE HERE>

# ================================================
# Activity 2: Price Analysis
# ================================================

# Compute the mean, median, and standard deviation for UnitPrice
# Visualize the distribution using a histogram
# Identify pricing outliers with a boxplot

# Example
# mean_value <- mean(my_data$NumericVar)
# median_value <- median(my_data$NumericVar)
# sd_value <- sd(my_data$NumericVar)

# ggplot(my_data, aes(x = NumericVar)) +
#   geom_histogram(binwidth = 5, fill = "green", color = "black") +
#   labs(title = "Value Distribution", x = "Value", y = "Frequency")

# ggplot(my_data, aes(y = NumericVar)) +
#   geom_boxplot(fill = "salmon", color = "black") +
#   labs(title = "Outlier Detection", y = "Value")


# Try It Out #1: Investigate whether prices are clustered or widely spread to inform pricing strategy.
# Steps:
# Summarize UnitPrice with descriptive stats
# <YOUR CODE HERE>

# Create a histogram and boxplot for price distribution
# <YOUR CODE HERE>

# Reflect on pricing tiers or anomalies
# YOUR REFLECTION HERE

# ================================================
# Activity 3: Categorical Analysis
# ================================================

# Generate a frequency table for ProductName
# Visualize product frequency using a bar chart
# Explore PaymentMethod distributions

# Example
# table(my_data$CategoryVar)

# ggplot(my_data, aes(x = reorder(CategoryVar, CategoryVar, function(x) -length(x)))) +
#   geom_bar(fill = "steelblue") +
#   theme(axis.text.x = element_text(angle = 45, hjust = 1)) +
#   labs(title = "Category Frequency", x = "Category", y = "Count")

# ggplot(my_data, aes(x = SubCategoryVar)) +
#   geom_bar(fill = "lightgreen", color = "black") +
#   labs(title = "Subcategory Distribution", x = "Subcategory", y = "Frequency")


# Try It Out #1: Which products are customer favorites? Which payment methods dominate?
# Steps:
# Use table() and ggplot2 to visualize ProductName frequency
# <YOUR CODE HERE>

# Create a bar chart for PaymentMethod
# <YOUR CODE HERE>

# Consider how this informs promotions or operations
# YOUR ANALYSIS HERE

# ================================================
# Activity 4: Date/Time Analysis
# ================================================

# Convert OrderDate to Date format
# Create a YearMonth variable
# Aggregate and visualize monthly sales totals

# Example
# my_data$TimeStamp <- as.Date(my_data$TimeStamp)
# my_data$TimePeriod <- format(my_data$TimeStamp, "%Y-%m")

# monthly_summary <- my_data %>%
#   group_by(TimePeriod) %>%
#   summarize(TotalValue = sum(NumericVar))

# ggplot(monthly_summary, aes(x = TimePeriod, y = TotalValue, group = 1)) +
#   geom_line(color = "purple") +
#   labs(title = "Monthly Value Trend", x = "Time Period", y = "Total Value") +
#   theme(axis.text.x = element_text(angle = 45, hjust = 1))

# Try It Out #1: You’re presenting to leadership about seasonal shopping patterns.
# Steps:
# Create a YearMonth column
# <YOUR CODE HERE>

# Summarize total sales by month
# <YOUR CODE HERE>

# Plot with geom_line()
# <YOUR CODE HERE>