# Ungraded Lab: String Manipulation Practice

# Install necessary packages (if not already installed)
# install.packages("tidyverse")  # This line installs the tidyverse package, which includes dplyr and readr.

# Load the tidyverse library & others needed for this activity
library(tidyverse)  # This loads the tidyverse package, making its functions available.
library(dplyr)
library(stringr)

# Load the retail dataset (retail_set7.csv)
retail_data <- read_csv("retail_set7.csv")  # read_csv() from the readr package reads the CSV file into a data frame.

# Examine the data structure
str(retail_data)  # str() shows the structure of the data frame, including column names and data types. This helps understand the data's organization.

# ================================================
# Activity 1: Replace and Standardize Text Patterns
# ================================================
# Use str_replace() for single replacements and str_replace_all() to handle multiple replacements in one go.
# Example:

# Load survey dataset
example_retail_data <- read.csv("retail_set7.csv")

# Use str_replace Assuming retail_data is your dataframe loaded from 'retail_set7.csv'
# example_retail_data <- example_retail_data %>%
#  mutate(OrderDetails = str_replace_all(OrderDetails, "-", " "))

# print(head(retail_data))  # Display the first few rows of the transformed data to confirm changes


# Try it Out #1 : Use str_replace_all() to standardize the size notations to single letters (e.g., "L" instead of "Large").

# <YOUR CODE HERE>

# Try it Out #2 : Use str_replace_all() to replace the abbreviations with the full color names (e.g., "Blk" instead of "Black").

# <YOUR CODE HERE>


# ================================================
# Activity 2: Splitting Text Details
# ================================================
# Split OrderDetails by a delimiter into separate parts.

# Example:

# Split OrderDetails by a delimiter into separate columns: Product, Size, and Color
# split_details <- str_split_fixed(retail_data$OrderDetails, " - ", 3)

# retail_data <- retail_data %>%
#   mutate(Product = str_replace(split_details[, 1], "Product: ", ""),
#        Size = str_replace(split_details[, 2], "Size: ", ""),
#        Color = str_replace(split_details[, 3], "Color: ", ""))

# print(head(retail_data))  # Display the first few rows of the transformed data to confirm changes


# Try it Out #1 : Split the OrderDetails column by a delimiter to extract the color information into a new column.

# <YOUR CODE HERE>

# Try it Out #2 : Split the OrderDetails column to extract the size information into a new column.

# <YOUR CODE HERE>


# ================================================
# Activity 3: Extract and Organize Data Clearly with dplyr
# ================================================
# Use str_split_fixed() within a mutate() function to create a new column for size.

# Example
# retail_data <- retail_data %>%
#   mutate(Size = str_replace(str_split_fixed(OrderDetails, " - ", 3)[, 2], "Size: ", ""))  # #Extract size information properly

# print(head(retail_data))  # Display the first few rows of the new 'Size' column data

# Try it Out #1 : Use str_split_fixed() to create a new column for the product names.

# <YOUR CODE HERE>

# Try it Out #2 : Extract the first part of the ShippingAddress column using str_split_fixed().

# <YOUR CODE HERE>

# ================================================
# Activity 4: Final Polishing and Formatting Check
# ================================================
# Use str_trim() to clean up spaces.

# Example
# retail_data <- retail_data %>%
#   mutate(CustomerID = str_trim(CustomerID, side = "both"),
#         OrderDetails = str_trim(OrderDetails, side = "both"),
#         ShippingAddress = str_trim(ShippingAddress, side = "both"))

# print(head(retail_data))


# Try it Out #1 : Use str_replace_all() and regex to remove trailing punctuation.

# <YOUR CODE HERE>

# ================================================
# Bringing it all Together
# ================================================

# Problem #1: Identify the necessary function(s) and code the solution.

# Step 1: Split OrderDetails into separate columns: Product, Size, and Color
# HINT: Use str_split_fixed to split by " - " into exactly 3 columns
split_details_final <- __________(retail_data$OrderDetails, __________, ___)

# Step 2: Add new columns by cleaning each split piece
# HINT: Use str_replace to remove "Product: ", "Size: ", and "Color: "
retail_data <- retail_data %>%
  mutate(Product = __________(split_details_final[, 1], "Product: ", ""),
         Size = __________(split_details_final[, 2], "Size: ", ""),
         Color = __________(split_details_final[, 3], "Color: ", ""))

# Step 3: Standardize and clean the original OrderDetails column
# HINT: Use str_replace_all to fix abbreviations and remove labels
retail_data <- retail_data %>%
  mutate(OrderDetails = __________(OrderDetails, "Blk", "Black")) %>%
  mutate(OrderDetails = __________(OrderDetails, "-", " ")) %>%
  mutate(OrderDetails = __________(OrderDetails, "Size: ", "")) %>%
  mutate(OrderDetails = __________(OrderDetails, "Color: ", ""))  

# Step 4: Preview the result to confirm your changes
print(__________)
