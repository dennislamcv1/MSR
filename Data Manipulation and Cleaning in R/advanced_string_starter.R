# Install necessary packages (if not already installed)

# ================================================
# Activity 1: Fixing Common Typos in Order Details
# ================================================

# Use str_replace_all() to fix “clothing” typos in the OrderDetails column.
# Example:

library(readr)
library(stringr)
library(dplyr)

# Load dataset
retail_set8 <- read_csv("retails_set8.csv")

# Fix common typos in item descriptions
# retail_set8 <- retail_set8 %>%
#   mutate(OrderDetails = str_replace_all(OrderDetails, c("Clothig" = "Clothing")))


# Try it Out #1 : Use str_replace_all() to replace "Large" with "Lrg" in the OrderDetails column.

# <YOUR CODE HERE>

# Try it Out #2 : Use str_replace_all() to replace "Color" with "Col" in the OrderDetails column.

# <YOUR CODE HERE>


# ================================================
# Activity 2: Splitting Product Codes Using str_split()
# ================================================
# Assume OrderDetails contains product codes separated by colons and split them into components.

# Example:

# Assuming OrderDetails contains product codes separated by colons
# Split Product Codes to separate components using str_split()
# product_components <- str_split(retail_set8$OrderDetails, ": ")

# retail_set8 <- retail_set8 %>%
#   mutate(ProductCodePart1 = sapply(product_components, `[`, 1),
#          ProductCodePart2 = sapply(product_components, `[`, 2),
#          ProductCodePart3 = sapply(product_components, `[`, 3))


# Try it Out #1 : Use str_split() to split the product name and color information into separate components.

# <YOUR CODE HERE>


# ================================================
# Activity 3: Breaking Down Address Fields Using str_split_fixed()
# ================================================

# Example:

# Split OrderDetails into separate components: Type and Name using str_split_fixed()
# split_info <- str_split_fixed(retail_set8$OrderDetails, " ", 2)
  # str_split_fixed() function splits the 'OrderDetails' string by the specified delimiter (\n) into 2 fixed columns.

# retail_set8 <- retail_set8 %>%
#  mutate(Type = split_info[, 1],    # Extract Type information from the first column
#         Name = split_info[, 2])     # Extract Name information from the second column

# head(retail_set8)  # Display the first few rows of the transformed data to confirm changes

# Try it Out #1 : Use str_split_fixed() to split the ShippingAddress column to State and Zip parts.

# <YOUR CODE HERE>

# ================================================
# Activity 4: Combining stringr with dplyr
# ================================================
# Clean and standardize text within mutate().
# Filter orders based on text patterns.
# Create new columns from parsed text.

# Example:

# Clean and standardize text columns
# retail_set8 <- retail_set8 %>%
#   mutate(Info = str_replace_all(Info, " - ", ": ") %>%
#   mutate(Info = str_squish(Info)))

# Filter based on specific patterns in OrderDetails
# large_orders <- retail_set8 %>%
#   filter(str_detect(OrderDetails, "Lg"))

# Create new columns from split text using str_split_fixed()
# split_details <- str_split_fixed(retail_set8$OrderDetails, ": ", 4)

# retail_set8 <- retail_set8 %>%
#   mutate(Product = split_details[, 1],
#          Size = split_details[, 4],
#          Color = split_details[, 5])


# Try it Out #1 : Use str_replace_all() within a dplyr mutate() to clean up the product names and then filter orders based on the pattern "Lg".

# <YOUR CODE HERE>

# ================================================
# Bringing it all Together
# ================================================

# Problem #1: Identify the necessary function(s) and code the solution.

# Task:
# Replace “Size:” with “Size> ” and “Color:” with “Color> ” to standardize the labels.
# Then split OrderDetails into Product, Size, and Color columns.

# Step 1: Standardize label formatting in OrderDetails
# HINT: Use str_replace_all() to change how “Size:” and “Color:” are written so they’re easier to split later.
retail_set8 <- retail_set8 %>%
  mutate(OrderDetails = __________(OrderDetails, "Size:", "_____")) %>%
  mutate(OrderDetails = __________(OrderDetails, "Color:", "_____"))  

# Step 2: Split OrderDetails into pieces
# HINT: Use str_split_fixed() to break the string at ": " — this separates labels from values.
split_details_final <- __________(retail_set8$OrderDetails, ": ", ___)  

# Step 3: Extract and clean up the values
# HINT: Use str_trim() to remove any extra spaces from the pieces you just split.
retail_set8 <- retail_set8 %>%
  mutate(Product = __________(split_details_final[, 2], side = "both"),  
         Size    = __________(split_details_final[, 4], side = "both"),    
         Color   = __________(split_details_final[, 5], side = "both"))    

# Step 4: Preview the cleaned dataset
print(__________)
