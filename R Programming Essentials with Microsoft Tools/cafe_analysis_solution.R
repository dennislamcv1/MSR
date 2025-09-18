# ================================================
# CafeHub Loyalty Program Analysis - SOLUTION
# Module 5 - Final Project
# ================================================

# ================================================
# Graded Challenge 1: Data Import & Cleaning
# (25 points)
# ================================================

### SOLUTION CODE ###
# Import data files
customer_data <- read.csv("customer_data.csv")
loyalty_data <- read.csv("loyalty_data.csv")

# Print Customer Data
print(customer_data)

# Print Loyalty Data
print(loyalty_data)

#Check Customer Data Structure
print(str(customer_data))  # Check structure

# ================================================
# Graded Challenge 2: Customer Analysis
# (25 points)
# ================================================

### SOLUTION CODE ###
library(dplyr)

# Filter Customer Data for Ages > 30
# Store results in: Above_30
Above_30 <- customer_data %>% filter(Age > 30 )
print(Above_30)

# Filter Data for Female customers who bought Smoothie. 
# Store results in: df_filtered
df_filtered <- customer_data %>% filter(Product== "Smoothie"  & Gender == "Female"  )
print(df_filtered)

# Select the Age and Product columns
# Store in df_selected
df_selected <- df_filtered %>% select(Age, Product)
print(df_selected)

# ================================================
# Graded Challenge 3: Loyalty Program Analysis
# (30 points)
# ================================================

### SOLUTION CODE ###
# Create tier categories
categorize_tier <- function(points) {
  case_when(
    LoyaltyPoints >= 500 ~ "Gold",
    LoyaltyPoints >= 200 ~ "Silver",
    TRUE ~ "Bronze"
  )
}

### END SOLUTION CODE ###

# ================================================
# Graded Challenge 4: Report Generation
# (20 points)
# ================================================

### SOLUTION CODE ###
write.csv(loyalty_data, "loyalty_data.csv", row.names = FALSE)
write.csv(df_selected, "customer_data.csv", row.names = FALSE)

### END SOLUTION CODE ###