# ================================================
# Sample Project 1: Finance Transactions Summary
# SOLUTION CODE with Comments
# ================================================

# Load libraries
library(dplyr)      # For data manipulation
library(ggplot2)    # For plotting
library(plotly)     # For interactivity
library(lubridate)  # For date functions

# Load dataset
finance_df <- read.csv("finance_transactions.csv")

# ================================================
# Activity 1: Clean and Prepare Date Data
# ================================================

# Practice Challenges:
# Convert TransactionDate to Date format
finance_df$TransactionDate <- ___(___)

# Extract month and year in the format "YYYY-MM"
finance_df$Month <- ___(___, ____)

# ================================================
# Activity 2: Explore Transaction Amounts by Customer Group
# ================================================

# Practice Challenges:

# Group by age group, calculate average, and sort in descending order
finance_summary <- finance_df %>%
  ___(___) %>%
  ___(AverageAmount = ___(Amount, na.rm = TRUE)) %>%
  ___(___(AverageAmount))

# ================================================
# Activity 3: Visualize Channel and Transaction Type Relationships
# ================================================

# Practice Challenges:

# Count number of transactions by category
channel_summary <- finance_df %>%
  ___(___, ___)

# Build ggplot chart
p <- ___(___, aes(x = ___, y = ___, fill = ___)) +
  ___(stat = ___, position = ___) +
  ___(title = "Transactions by Channel and Type", y = "Count")

# Make interactive
print(___(p))

# ================================================
# Activity 4: Analyze Monthly Account Activity Trends
# ================================================

# Practice Challenges:

# Extract numeric month to control plot order
finance_df$MonthNum <- ___(___)

# Group and summarise transactions
monthly_summary <- finance_df %>%
  ___(___, ___) %>%
  ___(TotalTransactions = ___())

# Plot monthly line chart
p2 <- ___(___, aes(x = ___, y = ___, color = ___)) +
  ___() +
  ___(breaks = 1:12, labels = ___) +
  ___(title = "Monthly Account Activity", x = "Month")

print(p2)

# ================================================
# Activity 5: Analyze Transaction Sizes by Channel
# ================================================

# Create TransactionSize
finance_df <- finance_df %>%
  ___(TransactionSize = ___(
    Amount < 100 ~ "Small",
    Amount >= 100 & Amount < 1000 ~ "Medium",
    Amount >= 1000 ~ "Large"
  ))

# Count by Channel and Size
size_summary <- finance_df %>%
  ___(___, ___)

# Plot interactive bar chart
p3 <- ___(___, aes(x = ___, y = ___, fill = ___)) +
  ___(stat = ___, position = ___) +
  ___(title = "Transaction Sizes by Channel", y = "Count")

print(___(p3))
