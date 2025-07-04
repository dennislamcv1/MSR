# Install necessary packages (if not already installed)
# install.packages("tidyverse")  # This line installs the tidyverse package, which includes dplyr and readr.

# Load the tidyverse library
library(tidyverse) # This loads the tidyverse package, making its functions available.

# Load the retail dataset (retail_set11.csv)
retail_data <- read_csv("retail_set11.csv")  # read_csv() from the readr package reads the CSV file into a data frame.

# Examine the data structure
str(retail_data)  # str() shows the structure of the data frame, including column names and data types. This helps understand the data's organization.

# ================================================
# Activity 1: Detecting Missing Values
# ================================================
# Add comments to guide Copilot in generating code to detect missing values.
# Example:

# Check if there are missing values in the dataset
any(is.na(retail_data)) # Returns TRUE if there are missing values, otherwise FALSE


# Try it Out #1 : Add a comment instructing GitHub Copilot to identify missing values in the 'CustomerID' column and generate the corresponding code.

# <YOUR CODE HERE>

# Try it Out #2 : Add a comment instructing GitHub Copilot to identify missing values in the 'TransactionDate' column and generate the corresponding code.


# <YOUR CODE HERE>


# ================================================
# Activity 2: Imputing Missing Values
# ================================================
# Use comments to employ Copilot to generate input code. Focus on replacing NAs in 'ReviewRating' with the column's median value.
# Example:

# Impute missing values in ReviewRating with median
retail_data$ReviewRating[is.na(retail_data$ReviewRating)] <- median(retail_data$ReviewRating, na.rm = TRUE)

# Try it Out #1 : Add a comment to guide Copilot in generating code that imputes missing values in 'UnitPrice' with the median of the column values.

# <YOUR CODE HERE>

# Try it Out #2 : Use comments to direct Copilot to generate code that imputes missing values in 'ReviewRating' with the column's mean value.

# <YOUR CODE HERE>

# ================================================
# Activity 3: Anomaly Detection
# ================================================
# Use comments to help Copilot generate a script that flags abnormally high or low prices and quantities, applying realistic thresholds based on your understanding of retail transactions.
# Example


# Detect anomalies in Quantity
filtered_data <- retail_data %>%
  filter(Quantity < 1 | Quantity > 100)

print(filtered_data)

# Try it Out #1 : Add a comment that instructs GitHub Copilot to flag entries where 'UnitPrice' is unrealistically low (e.g., less than $5).

# <YOUR CODE HERE>

# Try it Out #2 :Add a comment that guides Copilot to identify transactions where 'Quantity' is abnormally high (e.g., greater than 10).

# <YOUR CODE HERE>


