# Ungraded Lab: Handling Missing Data, Duplicate Entries, and Outliers in Retail Sales Data

# Install necessary packages (if not already installed)
# install.packages("tidyverse")  # This line installs the tidyverse package, which includes dplyr and readr.

# Load the tidyverse library
library(tidyverse)  # This loads the tidyverse package, making its functions available.

# Load the retail dataset (Practice_set12_P2.csv)
retail_data <- read_csv("Practice_set12_P2.csv")  # read_csv() from the readr package reads the CSV file into a data frame.

# Examine the data structure
str(retail_data)  # str() shows the structure of the data frame, including column names and data types. This helps understand the data's organization.

# ================================================
# Activity 1: Fill in Missing Values
# ================================================
# Calculate median prices per product and use these to fill missing price values.

median_prices <- # <YOUR CODE HERE> 

# Impute missing price values with median prices
retail_data <- # <YOUR CODE HERE

# Replace any missing quantities with a default value of 1.
retail_data$Quantity # <YOUR CODE HERE

# ================================================
# Activity 2: Clean Up Duplicate Records
# ================================================
# Identify duplicate orders (same CustomerID, OrderDate, ProductDescription).
duplicates <- # <YOUR CODE HERE>

# Remove duplicates with distinct().
retail_data <- # <YOUR CODE HERE>

# ================================================
# Activity 3: Adjust Problematic Outliers
# ================================================
# Identify your 1st and 99th percentile price points as upper/lower thresholds.

price_thresholds <- # <YOUR CODE HERE>
quantity_thresholds <- # <YOUR CODE HERE>


#Adjust Price and Quantity logically based on identified outliers.
retail_data <- # <YOUR CODE HERE>

# ================================================
# Activity 4: Summarize and Validate Your Improvement
# ================================================
# Provide overall descriptive summaries (average, min, max) clearly showing data is analysis-ready.
# Clearly illustrate the number of orders by products.
# Create numeric summaries to show Price and Quantity improvements after outlier adjustments.

# <YOUR CODE HERE>