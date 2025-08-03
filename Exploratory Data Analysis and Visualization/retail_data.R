# Ungraded Lab: Advanced Relationship Analysis

# Load required libraries
library(tidyverse)     # Data manipulation and visualization
library(ggplot2)       # Advanced plotting functions

# Load the dataset
retail_df <- read.csv("retail_7.csv")

# Review the dataset
head(retail_df)
str(retail_df)
summary(retail_df)

# ================================
# Activity 1: Numerical-Numerical Relationships
# ================================

# Create a scatter plot to visualize the relationship between SalesAmount and ProfitAmount.
# Calculate the correlation coefficient to quantify the strength of this relationship.
# Interpret visual trends such as clustering, slope, and outliers.

# Example: Scatter plot of Sales vs. Profit
# ggplot(retail_df, aes(x = SalesAmount, y = ProfitAmount)) +
#   geom_point() +
#   labs(title = "Sales vs. Profit", x = "Sales Amount", y = "Profit Amount")

# Try it Out #1: Explore how pricing and customer satisfaction might relate.
# Steps:
# Compute correlation using cor()
# <YOUR CODE HERE>

# Create scatter plot for QuantityOrdered vs. DiscountPercent
# plot_1 <- # <YOUR CODE HERE>
# print(plot_1)

# Create scatter plot for UnitPrice vs. CustomerRating
# plot_1.1 <- # <YOUR CODE HERE>
# print(plot_1.1)

# Analyze patterns such as slope and clustering
# YOUR RESPONSE HERE

# ================================
# Activity 2: Categorical-Numerical Relationships
# ================================

# Create a box plot to compare SalesAmount across Regions.
# Calculate average UnitPrice values by ProductCategory.
# Display group-level summaries using bar charts for easier interpretation.

# Example: Box plot of Sales across Regions
# ggplot(retail_df, aes(x = Region, y = SalesAmount)) +
#   geom_boxplot() +
#   labs(title = "Sales Across Regions", x = "Region", y = "Sales Amount")

# Example: Bar chart of average UnitPrice by ProductCategory
# retail_df %>%
#   group_by(ProductCategory) %>%
#   summarise(AvgPrice = mean(UnitPrice)) %>%
#   ggplot(aes(x = ProductCategory, y = AvgPrice)) +
#     geom_bar(stat = "identity") +
#     labs(title = "Average Price by Category", x = "Product Category", y = "Average Price")

# Try it Out #1: Explore whether product category impacts pricing.
# Steps:
# Generate box plot of UnitPrice by ProductCategory
# plot_2 <- # <YOUR CODE HERE>
# print(plot_2)

# Summarize average UnitPrice using group_by() and summarise()
# <YOUR CODE HERE>

# Create bar chart to compare pricing trends
# plot_2.1 <- # <YOUR CODE HERE>
# print(plot_2.1)

# ================================
# Activity 3: Categorical-Categorical Relationships
# ================================
# Build a stacked bar chart to show ProductType distribution across StoreLocations.
# Interpret distribution patterns for strategic insights.

# Example: Product Type vs. Store Location
# ggplot(retail_df, aes(x = StoreLocation, fill = ProductType)) +
#   geom_bar(position = "stack") +
#   labs(title = "Product Type vs. Store Location", x = "Store Location", fill = "Product Type")

# Try it Out #1: Assess payment preferences across customer types.

# Steps:
# Calculate and interpret Payment Types across Customer Types
# <YOUR CODE HERE>

# Visualize results with stack chart
# plot_3 <- # <YOUR CODE HERE>
# print(plot_3)
