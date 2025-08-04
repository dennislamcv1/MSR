# ================================================
# Final Project: Regression Model Development and Validation
# Module 5 - Final Project
# ================================================

# ================================================
# Graded Challenge 1: Data Preparation & Exploration (25 points)
# ================================================

# Step 1: Load dependencies and dataset
library(tidyverse)     # For data wrangling and visualization
library(broom)         # For tidying model outputs
library(car)           # For checking multicollinearity
library(ggplot2)       # For plotting
library(httpgd)

# Load dataset
analysis_df <- read_csv("regression_model_final.csv")

# Step 2: Examine structure and summary statistics
# YOUR CODE HERE

# Step 3: Identify and remove missing values
# YOUR CODE HERE

# Step 4: Calculate mean and standard deviation for:
# Income, Age, TotalSpend
# YOUR CODE HERE


# ================================================
# Graded Challenge 2: Data Visualization with ggplot2 (25 points)
# ================================================

# Step 1: Histogram of TotalSpend
# - Fill color: skyblue
# - Border color: black
# - Bins: 30
# - Title: "Distribution of Total Spend"
# - X-axis: "Total Spend"
# - Y-axis: "Number of Customers"
# YOUR CODE HERE

# Step 2: Scatter plot of Income vs TotalSpend
# - Color points by DeviceUsed
# - Add a linear trend line
# - Title: "Income vs Total Spend by Device Used"
# YOUR CODE HERE

# Step 3: Insights and Recommendations
# Describe 3–4 sentences about key findings
# Provide 2 bullet-style recommendations
# YOUR COMMENT HERE


# ================================================
# Graded Challenge 3: Model Development (25 points)
# ================================================

# Step 1: Build a simple regression model: TotalSpend ~ Income
# YOUR CODE HERE

# Step 2: Report R-squared and interpret slope
# YOUR CODE HERE

# Step 3: Build a multiple regression model with:
# Income, Age, PurchaseHistoryScore
# YOUR CODE HERE

# Step 4: Use summary() and broom::glance() to evaluate
# YOUR CODE HERE


# ================================================
# Graded Challenge 4: Model Validation & Prediction (25 points)
# ================================================

# Pre Reqs: Use the model created in Activity 3.
# Step 1: Use diagnostic plots and vif() to evaluate assumptions using par() with c(2,2)
# YOUR CODE HERE

# Step 2: Check for normality using qqnorm(), qqline(), and shapiro.test()
# YOUR CODE HERE

# Step 3: Predict TotalSpend for 3 new customer profiles
# YOUR CODE HERE

# Step 4: Add prediction intervals and interpret results
# YOUR CODE HERE

# Step 5: Estimate likelihood of high spending behavior

# Part A: Create a binary variable 'HighSpender' where TotalSpend > 500
# YOUR CODE HERE

# Part B: Fit a logistic regression model predicting HighSpender from Age, Income, and PurchaseHistoryScore
# YOUR CODE HERE

# Part C: Create a new tibble with a hypothetical customer profile
# YOUR CODE HERE

# Part D: Use predict(..., type = "response") to estimate probability
# YOUR CODE HERE
