# Ungraded Lab: Sample Project 1

# Install necessary packages (if not already installed)
# install.packages("tidyverse")  # This line installs the tidyverse package, which includes dplyr and readr.

# Load the tidyverse library
library(tidyverse)  # This loads the tidyverse package, making its functions available.

# Load the  dataset (Practice_set12_P1.csv) into healthcare_data
healthcare_data <- read_csv("Practice_set12_P1.csv")  # read_csv() from the readr package reads the CSV file into a data frame.

# Examine the data structure
str(healthcare_data)  # str() shows the structure of the data frame, including column names and data types. This helps understand the data's organization.

# ================================================
# Activity 1: Standardize Date and Time Fields (using tidyr, stringr, and dplyr)
# ================================================
# First, use tidyr::separate() to split AdmissionDate and DischargeDate columns into parts (day, month, year).
# Next, use tidyr::unite() to recombine these parts into a standard YYYY-Month-DD format.
# You might also need to use stringr::str_extract() if certain formats require additional extraction.

# <YOUR CODE HERE>


# ================================================
# Activity 2: Transform Combined Address Fields into Structured Components
# ================================================
# Use tidyr::separate() to split PatientAddress into structured columns clearly: Street, City, State, ZIP.

# <YOUR CODE HERE>


# ================================================
# Activity 3: Clearly Extract Procedure Details from Text Descriptions
# ================================================
# Extract ProcedureCode, ProcedureType, and ProcedureDetail fields clearly from ProcedureDescription using tidyverse and clearly formulated regex expressions (stringr::str_extract() or tidyr::extract() with regex)..

# <YOUR CODE HERE>


# ================================================
# Activity 4: Creating Calculated Fields to Support Analysis
# ================================================
# Compute TotalCharge clearly by multiplying UnitCharge × Quantity of each Procedure.


# <YOUR CODE HERE>
