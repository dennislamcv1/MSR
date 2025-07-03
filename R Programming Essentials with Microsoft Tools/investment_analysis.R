# ================================================
# Investment Portfolio Analysis
# Practice Project 2 - Starter Code
# ================================================
library(dplyr)

# ================================================
# Activity 1: Data Import & Cleaning
# ================================================

# Check for missing values in a specific column
# is.na(data_set$column)

# Remove rows where that column has missing values
# new_data <- filter(old_data, !is.na(column))

### CHALLENGE 1 #### 

# Import transaction_data.csv and portfoilo_data.csv
< YOUR CODE HERE> 

# Print the structure of both datasets using str()
< YOUR CODE HERE> 

# Handle missing values
# 1. Find missing ages in portfolio_data
# 2. Remove missing values using filter()
# 3. Verify no missing ages remain

# Find missing ages in portfolio_data
< YOUR CODE HERE> 

# Remove missing values using filter()
< YOUR CODE HERE> 

# Verify no missing ages remain
< YOUR CODE HERE> 


# ================================================
# Activity 2: Basic Data Analysis
# ================================================

# Example Code:
# Filter with a single condition
# df_filtered <- set_data %>% filter(Condition1 == "value")

# Filter with multiple conditions
# df_filtered <- set_data %>% filter(Condition1 == "value" & Condition2 > value)

# Select specific columns
# df_selected <- set_data %>% select(Column1, Column2)

### CHALLENGE 2 ###
# - Filter and Select Transaction Data
# - Filter transaction_data for Amount > 10000. Save in Above_10000
# - Filter portfolio_data for Category "A" Clients that are older than 40 . Save in df_filtered.
# - Select data from df_filtered (ClientID, Age, Category). Store in df_selected

# - Filter transaction_data for Amount > 10000. Save in Above_10000
< YOUR CODE HERE> 

# Filter Data for Category "A" Clients that are older than 40 years old. Save in df_filtered
< YOUR CODE HERE> 

# Select the ClientID, Age, and Category columns
# Store in df_selected
< YOUR CODE HERE> 

# ================================================
# Activity 3: Client Tier Analysis
# ================================================

### CHALLENGE 3 ###
# Create a new column (Tier)  that categorizes clients based on their salary range on the Above_1000 dataframe:
# - Low Salary < 40000
# - Medium Salary < 60000
# - High Salary >= 60000

< YOUR CODE HERE> 

# ================================================
# Activity 4: Report Generation
# ================================================

### CHALLENGE 4 ###
# Generate analysis report
# Save report as a csv named df_filtered to revised_portfolio.csv and Above_1000 to revised_transactions.csv

< YOUR CODE HERE> 
