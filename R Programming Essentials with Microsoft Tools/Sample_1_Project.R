# ===============================================================
# FitLife Fitness Club Loyalty Program Analysis - Starter Code
# ===============================================================

# === Step 1: Data Import & Cleaning ===

# Make sure to import any packages or libraries needed
# YOUR CODE HERE

# Import customer_data.csv and loyalty_data.csv
customer_data <- read.csv("data/customer_data.csv")
loyalty_data <- read.csv("data/loyalty_data.csv")

# Check initial data structures
print("Initial customer data structure:")
str(customer_data)
print("Initial loyalty data structure:")
str(loyalty_data)

# Handle any missing values in the `Age` and `PurchaseAmount` columns using the filter function.
# YOUR CODE HERE

# Verify data types and print the structure of the data frames.
# YOUR CODE HERE

# Hint: Use `str()` to check the structure and `!is.na())` to find missing values.

# === Step 2: Customer Analysis ===

# Filter data by Age > 30
# YOUR CODE HERE

# Filter data for Female customers who bought Yoga Class
# YOUR CODE HERE

# Select the Age and Product columns
# YOUR CODE HERE

# Hint: Use functions like `filter()` for filtering and `select()` from `dplyr` package for column selection.

# === Step 3: Loyalty Program Analysis ===
# Create a new column in loyalty_data called Tier
# YOUR CODE HERE

# Create new column called PurchaseAmount_EUR
# YOUR CODE HERE

# Hint: Think back to how we created new columns using existing data. For the first task, use a tool that helps apply different labels based on multiple conditions. For the second task, use arithmetic inside a transformation.


# === Step 4: Report Generation ===

# Export the two dataset (customer_data & loyalty_data) as csv files and save the report as `revised_customer_analysis_report.csv` and revised_loyaltyfitlife_analysis_report.csv.
# YOUR CODE HERE

# Hint: Use functions like `write.csv()` to compile text and save to csv file.
