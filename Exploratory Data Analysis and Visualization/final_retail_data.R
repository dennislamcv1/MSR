# ================================================
# Sample Project 2: Retail Product Trends
# ================================================

# Load required libraries
library(dplyr)      # Data manipulation
library(ggplot2)    # Plotting
library(plotly)     # Interactive plots
library(lubridate)  # Date functions

# Load your dataset
retail_df <- read.csv("retail_final.csv")

# ================================================
# Activity 1: Extract and Analyze Purchase Date Features
# ================================================

# Convert PurchaseDate to Date
# Extract Year, Month
# Create Weekend flag

# YOUR CODE HERE

# ================================================
# Activity 2: Group Products into Price Bands
# ================================================

# Create PriceBand using case_when
# Count by PriceBand
# Plot bar chart

# YOUR CODE HERE

# ================================================
# Activity 3: Visualize Sales by Region and Category
# ================================================

# Count sales by Region and ProductCategory
# Plot stacked bar chart

# YOUR CODE HERE

# ================================================
# Activity 4: Compare Average Profit by Region
# ================================================

# Group by Region
# Calculate average Profit
# Plot interactive bar chart

# YOUR CODE HERE

# ================================================
# Activity 5: Analyze Quantity Distribution by Category
# ================================================

# Create boxplot of Quantity by ProductCategory
# Convert to interactive with ggplotly

# YOUR CODE HERE