# Ungraded Lab: Exploring Individual Variables in Healthcare Data

# Install necessary packages (if not already installed)
# install.packages("tidyverse")
# install.packages("lubridate")

# Load the required libraries
library(tidyverse)
library(lubridate)

# Load your data into R using read_csv()
pharmacy_data <- read_csv("healthcare_4.csv")

# ================================================
# Activity 1: Numerical Variable Analysis
# ================================================

# Compute the mean, median, and standard deviation for 'Quantity'.
# Example

# First compute the values
# mean_value <- mean(my_data$NumericVar, na.rm = TRUE)
# median_value <- median(my_data$NumericVar, na.rm = TRUE)
# sd_value <- sd(my_data$NumericVar, na.rm = TRUE)

# Now let's visualize the data using ggplot
# ggplot(my_data, aes(x = NumericVar)) +
    # geom_histogram(binwidth = 1, fill = "blue", color = "black") +
    # labs(title = "Distribution of Values", x = "Value", y = "Frequency")

# ggplot(my_data, aes(y = NumericVar)) +
    # geom_boxplot(fill = "lightblue", color = "black") +
    # labs(title = "Outlier Detection", y = "Value")

# Try it Out #1: Calculate and interpret key statistics for sales quantities.

# Steps:
# Compute the mean, median, and standard deviation for Quantity.
# <YOUR CODE HERE>

# Visualize the distribution with a histogram.
# plot_1 <- # <YOUR CODE HERE>
# print(plot_1)


# Identify outliers using a boxplot.
# plot_1.1 <- # <YOUR CODE HERE>
# print(plot_1.1)

# Make inventory recommendations using comments based on the analysis.
# YOUR RECOMMENDATIONS

# ================================================
# Activity 2: Price Analysis
# ================================================

# Compute summary statistics for 'PricePerUnit'.
# Example
# mean_value <- mean(my_data$NumericVar, na.rm = TRUE)
# median_value <- median(my_data$NumericVar, na.rm = TRUE)
# sd_value <- sd(my_data$NumericVar, na.rm = TRUE)

# ggplot(my_data, aes(x = NumericVar)) +
    # geom_histogram(binwidth = 5, fill = "green", color = "black") +
    # labs(title = "Value Distribution", x = "Value", y = "Frequency")

# ggplot(my_data, aes(y = NumericVar)) +
    # geom_boxplot(fill = "salmon", color = "black") +
    # labs(title = "Outlier Analysis", y = "Value")

# Try it Out #1: Compute and analyze the distribution of price data.

# Steps:
# Compute summary statistics for PricePerUnit.
# <YOUR CODE HERE>

# Create a histogram to visualize the price distribution.
# <YOUR CODE HERE>
# plot_2 <- # <YOUR CODE HERE>
# print(plot_2)


# Create a boxplot to identify outliers.
# <YOUR CODE HERE>
# plot_2.1 <- # <YOUR CODE HERE>
# print(plot_2.1)


# Investigate the impact of outliers and suggest pricing adjustments.
# YOUR IMPACT INVESTIGATION AND SUGGESTIONS

# ================================================
# Activity 3: Categorical Analysis
# ================================================

# Generate a frequency table for 'ProductName'.

# Example
# product_freq <- table(pharmacy_data$ProductName)

# Try it Out #1: Analyze product popularity through visualization.

# Steps:
# Generate a frequency table for ProductName.
# <YOUR CODE HERE>

# Visualize the frequency with a bar chart.
# plot_3 <- # <YOUR CODE HERE>
# print(plot_3)

# Show proportions with a pie chart.
# plot_3.1 <- # <YOUR CODE HERE>
# print(plot_3.1)


# Propose marketing campaigns based on the analysis.
# YOUR MARKETING PROPOSAL

# ================================================
# Activity 4: Date/Time Analysis
# ================================================

# Convert 'TransactionDate' to a Date object and extract YearMonth.
# Example
# my_data$TimeStamp <- as.Date(my_data$TimeStamp)
# my_data$TimePeriod <- format(my_data$TimeStamp, "%Y-%m")

# monthly_summary <- my_data %>%
    # group_by(TimePeriod) %>%
    # summarize(TotalValue = sum(NumericVar))

# ggplot(monthly_summary, aes(x = TimePeriod, y = TotalValue, group = 1)) +
    # geom_line(color = "darkgreen") +
    # labs(title = "Monthly Value Trend", x = "Time Period", y = "Total Value") +
    # theme(axis.text.x = element_text(angle = 45, hjust = 1))


# Try it Out #1: Analyze temporal data for insights.

# Steps:
# Convert TransactionDate to a Date object and extract YearMonth.
# <YOUR CODE HERE>

# Aggregate sales data by month.
# <YOUR CODE HERE>

# Create a time series plot to analyze trends.
# plot_4 <- # <YOUR CODE HERE>
# print(plot_4)

# Recommend stock adjustments based on the analysis.
# YOUR RECOMMENDATIONS
