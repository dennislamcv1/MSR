# Data Format Transformation Practice

# Install necessary packages (if not already installed)
# install.packages("tidyverse")  # This line installs the tidyverse package, which includes dplyr and readr.

# Load the tidyverse library
library(tidyverse)  # This loads the tidyverse package, making its functions available.

# ================================================
# Activity 1: Importing and Understanding Your Data
# ================================================

# Load the retail dataset (retail_set4.csv)
sales_data <- read_csv("retail_set4.csv")  # read_csv() from the readr package reads the CSV file into a data frame.

# Examine the data structure
str(sales_data)  # str() shows the structure of the data frame, including column names and data types. This helps understand the data's organization.

# ================================================
# Activity 2: Converting Wide Data into Long Format
# ================================================
# Use pivot_longer() to transform from wide to long, creating columns "Product" and "Sales".

# Example:
# sales_long <- sales_data %>%
# pivot_longer(cols = starts_with("Product"), 
#               names_to = "Product", 
#               values_to = "Sales")

# head(sales_long)


# sales_long <- sales_data %>%
# pivot_longer(cols = c(Product_A_Sales, Product_B_Sales),
#               names_to = "Product",
#               values_to = "Sales")



# Try it Out #1 : Use pivot_longer() to transform the dataset, including only "Product_A_Sales" and "Product_B_Sales" columns.

# <YOUR CODE HERE>

# Try it Out #2 : Use pivot_longer() to transform the dataset, including only "Product_C_Sales" and "Product_B_Sales" columns.

# Check with all.equal(original_totals$Product_A_Sales_Total , reshaped_totals$Product_A_Sales_Total)
# <YOUR CODE HERE>


# ================================================
# Activity 3: Transforming Data from Long to Wide Format
# ================================================
# Use pivot_wider() to turn your long format back into wide, creating separate columns for each product.
# Example

# sales_wide <- sales_long %>%
# pivot_wider(names_from = Product, values_from = Sales)

# print(head(sales_wide))

# Try it Out #1 : Use pivot_wider() to transform the dataset, creating separate columns for each product.

# <YOUR CODE HERE>

# ================================================
# Activity 4: Checking Data Accuracy after Reshaping
# ================================================
# Compare the summary statistics of your original data against the reshaped version. Checking these numbers quickly ensures accuracy.
# Example

# Calculate original total sales per product (wide data)
# original_totals <- sales_data %>% 
#  summarize(across(starts_with("Product"), sum))

# Calculate total sales per product after reshaping (long to wide)
# reshaped_totals <- sales_wide %>% 
#  summarize(across(starts_with("Product"), sum))

# Check if totals match
# print(original_totals)
# print(reshaped_totals)

# Try it Out #1 : Compare the summary statistics of the original data against the reshaped version to confirm that the totals match.

# <YOUR CODE HERE>

# ================================================
# Bringing it all Together
# ================================================

# Problem #1: Fill in the missing key parts

# Step 1: Convert the data from wide to long format
# In wide format, each product has its own column. We want to reshape this so we can 
# analyze all products using a single column for product names and another for sales.
# Use starts_with() to select all columns that represent product sales
# Choose a name for the column that will store the original column names (like "Product")
# Choose a name for the column that will store the actual sales values (like "Sales")

sales_long <- sales_data %>%
  pivot_longer(cols = starts_with("_____"),      # Think: what prefix do all the product columns share?
               names_to = "_____",               # What do you want to call the column for product names?
               values_to = "_____")              # What should the new sales values column be called?

# Step 2: Summarize total sales for each product in long format
# Now that each row includes a product name and its sales:
# Use group_by() to group the data based on the product name column you just created
# Use summarize() to total the sales for each product

total_sales_long <- sales_long %>% 
  group_by(_____) %>%                    # Use the same name you used in `names_to`
  summarize(total_sales = sum(_____))     # Use the same name you used in`values_to`

# Step 3: Convert the data back to wide format
# To return to wide format:
# Use pivot_wider()
# The column with product names will become the new headers
# The column with sales values will be spread across the new product columns

sales_wide <- sales_long %>%
  pivot_wider(names_from = _____,                # This should match your `names_to` from Step 1
              values_from = _____)               # This should match your `values_to` from Step 1

# Step 4: Summarize sales again from the wide format
# In wide format again, each product has its own column. To total each product:
# Use summarize()
# Use across() with starts_with() to apply sum() to every product column at once
total_sales_wide <- sales_wide %>% 
  summarize(across(starts_with("_____"), sum)) # Match the same prefix you used in Step 1

# Step 5: Convert wide totals to long format for fair comparison
#  Convert wide totals to long format for fair comparison
total_sales_wide_long <- _____ %>%
  pivot_longer(cols = starts_with("____"), names_to = "Product", values_to = "total_sales")


# Step 6: Check if both summaries match

# Use all.equal() to compare your total sales in long vs. wide formats.
# If the result is TRUE, then your transformation logic is solid.
all_equal <- all.equal(_____, _____)  # Compare total_sales_long and total_sales_wide

print(all_equal)
