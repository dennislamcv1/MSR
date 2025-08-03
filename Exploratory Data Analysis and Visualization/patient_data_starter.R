# Ungraded Lab: Healthcare Data Preprocessing Practice

# Install necessary packages (these are pre-installed in your lab)
# install.packages("tidyverse")
# install.packages("lubridate")
# install.packages("stringr")
# install.packages("readr")

# Load the required libraries
library(tidyverse)
library(lubridate)
library(stringr)
library(readr)

# Load your data into R using read_csv() from the readr package within tidyverse
patient_data <- read_csv("healthcare_2.csv")

# Review the dataset using functions like head(), str(), and summary()
head(patient_data)
str(patient_data)
summary(patient_data)

# ================================================
# Activity 1: Resolve Missing and Invalid Values
# ================================================

# Identify invalid BMI entries and impute using the median.

# Example
# Replace "Invalid BMI" with NA and convert to numeric
# patient_data$BMI_Value <- replace(patient_data$BMI_Value, patient_data$BMI_Value == "Invalid BMI", NA)
# patient_data$BMI_Value <- as.numeric(patient_data$BMI_Value)

# Impute missing BMI with median explicitly
# median_bmi <- median(patient_data$BMI_Value, na.rm = TRUE)
# patient_data$BMI_Value[is.na(patient_data$BMI_Value)] <- median_bmi

# Try it Out #1: Handle invalid Zip_Code entries and impute these values.

# Steps:
# Replace "ABCDE" Zip_Codes entries with NA.
# Count how many entries are missing.
# Impute missing values (e.g., using city/state combos or setting to "Unknown").

# <YOUR CODE HERE>

# ================================================
# Activity 2: Correcting Data Type Mismatches
# ================================================

# Ensure all number-based fields are formatted as numeric.

# Example
# Extract numeric digits from Zip_Code and convert to numeric
# patient_data$Zip_Code <- as.numeric(str_extract(patient_data$Zip_Code, "\\d+"))  # Extract digits and convert

# Count number of zip codes in the standard 5-digit range
# valid_zips <- patient_data %>%
# filter(Zip_Code >= 10000 & Zip_Code <= 99999) %>%
# nrow()

# valid_zips  # Output count

# Try it Out #1: Correct "Cholesterol_Level" values to numeric.

# Steps: 
# Extract numeric values from Cholesterol_Level.
# Replace the existing column as numeric values.
# Quantify how many patient cholesterol readings fall into the borderline-high range (200-240 mg/dL inclusive).

# <YOUR CODE HERE>

# ================================================
# Activity 3: Fill Missing Prices with Median Values
# ================================================

# Standardize categorical fields through recoding methods.

# Example:
# patient_data <- patient_data %>%
# mutate(
# Gender = tolower(Gender),
# Gender = recode(Gender, "malee" = "male"),
# Gender = factor(Gender, levels = c("male", "female")),
# Smoker_Status = recode(Smoker_Status, "YES" = "Yes", "Y" = "Yes", "Smoker" = "Yes",
# "NO" = "No", "N" = "No", "Non-Smoker" = "No"),
# Smoker_Status = factor(Smoker_Status, levels = c("Yes", "No", "Unknown", "Refused to answer")),
# Patient_Consent = tolower(Patient_Consent),
# Patient_Consent = recode(Patient_Consent, "given" = "yes", "declined" = "no", "refused" = "no"),
# Patient_Consent = factor(Patient_Consent, levels = c("yes", "no")),
# Insurance_Type = tolower(Insurance_Type))

# Try it Out #1: Standardize State abbreviations.

# Steps:
# Standardize state abbreviations to two-letter uppercase.
# Recode any states denoted as “XXX” to “CA”.
# Determine and report the most frequently occurring state.

# <YOUR CODE HERE>

# ================================================
# Activity 4: Removing Duplicate Patient IDs
# ================================================

# Remove duplicates using distinct(), ensuring only the latest record remains (by Record_Date).

# Example:
# Identify duplicate Patient_ID
# duplicates <- patient_data %>% group_by(Patient_ID) %>% filter(n() > 1)

# Remove duplicates, keeping latest Record_Date.
# patient_data <- patient_data %>%
# arrange(desc(Record_Date)) %>%
# distinct(Patient_ID, .keep_all = TRUE)

# Try it Out #1: Verify no remaining duplicate patient records exist.

# Steps: 
# Count duplicates again in Patient_ID.
# Verify that count = 0.

# <YOUR CODE HERE>

# ================================================
# Activity 5: Data Transformation–Feature Creation, Normalization, and Binning
# ================================================

# Example: Create derived features to support patient risk scoring

# Step 1: Calculate insurance duration in years from a mock start date
# For demonstration, assume coverage started on Jan 1, 2015
# patient_data$Insurance_Duration <- time_length(interval(ymd("2015-01-01"), patient_data$Record_Date), "years")

# Check the calculated durations
# summary(patient_data$Insurance_Duration)

# Step 2: Normalize BMI_Value
# bmi_min <- min(patient_data$BMI_Value, na.rm = TRUE)
# bmi_max <- max(patient_data$BMI_Value, na.rm = TRUE)

# patient_data <- patient_data %>%
#   mutate(Normalized_BMI_Value = (BMI_Value - bmi_min) / (bmi_max - bmi_min))

# Check the normalized BMI
# summary(patient_data$Normalized_BMI_Value)

# Step 3: Create medication count category bins
# patient_data$Medication_Category <- cut(patient_data$Medication_Count,
# breaks = c(-Inf, 1, 2, 3, Inf),
# labels = c("Low", "Moderate", "High", "Very High"))

# Verify the medication count bins
# table(patient_data$Medication_Category)

# Try it Out #1: Create derived features for patient segmentation.

# Steps:
# Calculate patient age from Birth_Date and Record_Date.
# Normalize Average_Glucose to the range 0-1.
# Create medically relevant Systolic_BP category bins.

# <YOUR CODE HERE>


# ================================================
# Activity 6: Bringing it all together
# ================================================

# Problem 1: Detect and treat extreme outliers in "Systolic_BP".

# Solution:
# Visualize Systolic_BP to identify potential outliers
plot_6 <- ggplot(patient_data, aes(x = __________)) +  # Hint: Which column are you analyzing for outliers?
  __________(bins = _____, fill = "_____", color = "_____") +  # Hint: What kind of plot shows distributions?
  labs(title = "Distribution of __________", x = "__________", y = "__________")  
# Hint: Titles help communicate what’s being shown
print(plot_6)

# Detect outliers using IQR
bp_iqr <- __________(patient_data$__________, na.rm = TRUE)  # Hint: Use a spread measure that’s robust to outliers
bp_median <- __________(patient_data$__________, na.rm = TRUE)  # Hint: Center value that's less affected by skewed data
outlier_thresh_high <- bp_median + _____ * bp_iqr  # Hint: Typical multiplier for identifying extreme values
outlier_thresh_low <- bp_median - _____ * bp_iqr  # Hint: Same multiplier, but subtract

# Filter out outliers
patient_data <- patient_data %>%
  __________(__________ <= outlier_thresh_high & __________ >= outlier_thresh_low)  # Hint: Keep rows where values fall inside the range

# Problem 2: Perform final validation of preprocessing steps.

# Solution:
# Check for consistency in categorical variables
__________(patient_data$__________)  # Hint: Use a summary tool to scan each category
__________(patient_data$__________)  # Hint: Repeat for all key categorical columns
__________(patient_data$__________)  # Hint: Don’t forget patient consent status

# Verify absence of duplicates
remaining_duplicates <- sum(__________(patient_data$__________))  # Hint: What function checks for repeated rows?
remaining_duplicates  # Should be 0

# Verify correct data types
__________(patient_data)  # Hint: Use this to inspect the structure and types of each column