# Ungraded Lab: String Functions in Action

# Install necessary packages (if not already installed)
# install.packages("tidyverse")  # This line installs the tidyverse package, which includes dplyr and readr.

# Load the tidyverse library
library(tidyverse)  # This loads the tidyverse package, making its functions available.

# ================================================
# Activity 1: Detecting Patterns with str_detect()
# ================================================
# Check for "iPhone" or "Galaxy" in the ProductDescription column:
# Example:

# Add stringr library
library(stringr)

# Load survey dataset
example_retail_data <- read.csv("your_retail_set.csv")

# Detect products with "iPhone" or "Galaxy"
iphone_galaxy_products <- str_detect(example_retail_data$ProductDescription, "iPhone|Galaxy")

# Display the matching rows
print(example_retail_data[iphone_galaxy_products, ])


# Try it Out #1 : Load the datast. Then, detect products with "Pixel" in the ProductDescription column using str_detect().

# <YOUR CODE HERE>

# Try it Out #2 : Detect products with "Motorola" in the ProductDescription column using str_detect().

# <YOUR CODE HERE>


# ================================================
# Activity 2: Pinpointing Patterns with str_which()
# ================================================
# Check for "Unlocked"

# Example:
# Locate indices of products with "Unlocked"
# unlocked_indices <- str_which(example_retail_data$ProductDescription, "Unlocked")

# Show the rows at these specific locations
# print(example_retail_data[unlocked_indices, ])


# Try it Out #1 : Locate the row indices of products with "Prepaid" in the ProductDescription column using str_which().

# <YOUR CODE HERE>

# Try it Out #2 : Locate the row indices of products with " Protector" in the ProductDescription column using str_which().

# <YOUR CODE HERE>


# ================================================
# Activity 3: Extracting Key Details with str_extract() and str_extract_all()
# ================================================
# Extract storage sizes:

# Example
# Extract storage sizes from product descriptions
# storage_sizes <- str_extract(retail_data$ProductDescription, "[0-9]+GB")
# print(storage_sizes)


# Try it Out #1 : Extract colors using str_extract() from the ProductDescription column.

# <YOUR CODE HERE>


# ================================================
# Bringing it all Together
# ================================================

# Problem #1 : Identify the necessary function(s) and code the solution.

# Goal: Find all products that mention BOTH "128GB" and "Blue" in their descriptions.
# HINT:
# Use str_detect() to check if text contains a specific word or number.
# Use & to require that BOTH conditions must be true.

blue_128gb_products <- retail_data[
  __________(retail_data$ProductDescription, "_____") &   # Look for "128GB"
  __________(retail_data$ProductDescription, "_____"),    # Look for "Blue"
]
print(_)


# Problem #2 : Identify the necessary function(s) and code the solution.

# Goal: Find all "Unlocked" products that are either Blue, White, or Gray.
# HINT:
# Use | inside a string to mean OR (e.g., "Blue|White|Gray")
# Combine with & to require both "Unlocked" AND one of the colors

unlocked_color_products <- retail_data[
  __________(retail_data$ProductDescription, "Unlocked") & 
  __________(retail_data$ProductDescription, "______________________"),
]
print(_)