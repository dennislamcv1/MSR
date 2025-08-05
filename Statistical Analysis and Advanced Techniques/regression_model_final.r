# ================================================
# Final Project: Regression Model Development and Validation
# Module 5 - Final Project
# ================================================

# ================================================
# Graded Challenge 1: Data Preparation & Exploration (25 points)
# ================================================

# Step 1: Load dependencies and dataset
library(tidyverse)     # For data wrangling and visualization
library(broom)         # For tidying model outputs
library(car)           # For checking multicollinearity
library(ggplot2)       # For plotting
#library(httpgd)

# Load dataset
analysis_df <- read_csv("regression_model_final.csv")

# Step 2: Examine structure and summary statistics
# Check the structure of the dataset
str(analysis_df)

# Alternatively, use glimpse() from dplyr for a cleaner look
glimpse(analysis_df)

# View the first few rows
head(analysis_df)

# Summary statistics for numeric variables
summary(analysis_df)


# Step 3: Identify and remove missing values
colSums(is.na(analysis_df))

# Step 4: Calculate mean and standard deviation for:
# Income, Age, TotalSpend


analysis_df %>%
  summarise(
    mean_income = mean(Income, na.rm = TRUE),
    sd_income   = sd(Income, na.rm = TRUE),
    mean_age    = mean(Age, na.rm = TRUE),
    sd_age      = sd(Age, na.rm = TRUE),
    mean_spend  = mean(TotalSpend, na.rm = TRUE),
    sd_spend    = sd(TotalSpend, na.rm = TRUE)
  )



# ================================================
# Graded Challenge 2: Data Visualization with ggplot2 (25 points)
# ================================================

# Step 1: Histogram of TotalSpend
# - Fill color: skyblue
# - Border color: black
# - Bins: 30
# - Title: "Distribution of Total Spend"
# - X-axis: "Total Spend"
# - Y-axis: "Number of Customers"
# Step 1: Histogram of TotalSpend

ggplot(analysis_df, aes(x = TotalSpend)) +
  geom_histogram(
    bins = 30,
    fill = "skyblue",
    color = "black"
  ) +
  labs(
    title = "Distribution of Total Spend",
    x = "Total Spend",
    y = "Number of Customers"
  ) +
  theme_minimal()


# Step 2: Scatter plot of Income vs TotalSpend
# - Color points by DeviceUsed
# - Add a linear trend line
# - Title: "Income vs Total Spend by Device Used"
# Step 2: Scatter plot of Income vs TotalSpend

ggplot(analysis_df, aes(x = Income, y = TotalSpend, color = DeviceUsed)) +
  geom_point(alpha = 0.7) +
  geom_smooth(method = "lm", se = FALSE, color = "black") +
  labs(
    title = "Income vs Total Spend by Device Used",
    x = "Income",
    y = "Total Spend",
    color = "Device Used"
  ) +
  theme_minimal()


# Step 3: Insights and Recommendations
# Describe 3–4 sentences about key findings
# Provide 2 bullet-style recommendations
# The Distribution almost Normal with 15 customers at 1200 Total Spend
# All devices are equally distributed and no linearity detected

# ================================================
# Graded Challenge 3: Model Development (25 points)
# ================================================

# Step 1: Build a simple regression model: TotalSpend ~ Income

# Fit the model
model_simple <- lm(TotalSpend ~ Income, data = analysis_df)

# View model summary
summary(model_simple)


# Step 2: Report R-squared and interpret slope


# Extract R-squared
model_summary <- summary(model_simple)
r_squared <- model_summary$r.squared
r_squared

# Extract slope (coefficient for Income)
slope_income <- coef(model_simple)["Income"]
slope_income

# Interpretation (printed as a message)
cat("R-squared:", round(r_squared, 3), "\n")
cat("Slope for Income:", round(slope_income, 3), "\n")
cat("Interpretation: For every additional unit increase in Income, TotalSpend is expected to increase by",
    round(slope_income, 3), "units, on average, holding other factors constant.\n")


# Step 3: Build a multiple regression model with:
# Income, Age, PurchaseHistoryScore
# Step 3: Build a multiple regression model with Income, Age, and PurchaseHistoryScore

# Fit the multiple regression model
model_multiple <- lm(TotalSpend ~ Income + Age + PurchaseHistoryScore, data = analysis_df)

# View model summary
summary(model_multiple)




# Step 4: Use summary() and broom::glance() to evaluate
# Tidy and glance outputs for cleaner tables
tidy(model_multiple)
glance(model_multiple)


# ================================================
# Graded Challenge 4: Model Validation & Prediction (25 points)
# ================================================

# Pre Reqs: Use the model created in Activity 3.
# Step 1: Use diagnostic plots and vif() to evaluate assumptions using par() with c(2,2)
# Step 1: Model validation with diagnostic plots and VIF

# Set up 2x2 layout for diagnostic plots
par(mfrow = c(2, 2))

# Diagnostic plots for multiple regression model
plot(model_multiple)

# Reset plotting layout
par(mfrow = c(1, 1))

# Check multicollinearity using Variance Inflation Factor (VIF)
library(car)
vif_values <- vif(model_multiple)
vif_values


# Step 2: Check for normality using qqnorm(), qqline(), and shapiro.test()


# Extract residuals from the multiple regression model
residuals_multiple <- residuals(model_multiple)

# Q-Q plot
qqnorm(residuals_multiple, main = "Q-Q Plot of Residuals")
qqline(residuals_multiple, col = "red", lwd = 2)

# Shapiro-Wilk test for normality
shapiro_test_result <- shapiro.test(residuals_multiple)
shapiro_test_result


# Step 3: Predict TotalSpend for 3 new customer profiles


# Create new customer profiles
new_customers <- data.frame(
  Income = c(55000, 80000, 100000),
  Age = c(25, 40, 60),
  PurchaseHistoryScore = c(70, 85, 90)
)

# Predict TotalSpend for new customers
predicted_spend <- predict(model_multiple, newdata = new_customers)

# Combine predictions with input data
prediction_results <- cbind(new_customers, Predicted_TotalSpend = predicted_spend)
prediction_results


# Step 4: Add prediction intervals and interpret results


# Predict with prediction intervals (level = 0.95 for 95% PI)
pred_with_intervals <- predict(
  model_multiple,
  newdata = new_customers,
  interval = "prediction",
  level = 0.95
)

# Combine with new_customers data
prediction_results_with_PI <- cbind(new_customers, pred_with_intervals)
prediction_results_with_PI


# Step 5: Estimate likelihood of high spending behavior


# Part A: Create a binary variable 'HighSpender' where TotalSpend > 500


analysis_df <- analysis_df %>%
  mutate(HighSpender = ifelse(TotalSpend > 500, 1, 0))

# Check the distribution of the new variable
table(analysis_df$HighSpender)


# Part B: Fit a logistic regression model predicting HighSpender from Age, Income, and PurchaseHistoryScore

model_logistic <- glm(
  HighSpender ~ Age + Income + PurchaseHistoryScore,
  data = analysis_df,
  family = binomial
)

# View model summary
summary(model_logistic)

# Optionally, view tidy coefficients with odds ratios
library(broom)
tidy(model_logistic, exponentiate = TRUE, conf.int = TRUE)


# Part C: Create a new tibble with a hypothetical customer profile


new_customer_profile <- tibble(
  Age = 35,
  Income = 75000,
  PurchaseHistoryScore = 80
)

# Display the new profile
new_customer_profile


# Part D: Use predict(..., type = "response") to estimate probability


predicted_probability <- predict(
  model_logistic,
  newdata = new_customer_profile,
  type = "response"
)

# Display result
predicted_probability

